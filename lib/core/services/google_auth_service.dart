// lib/services/google_auth_service.dart
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService extends GetxService {
  GoogleAuthService({
    GoogleSignIn? googleSignIn,
    List<String> scopes = const ['email', 'profile'],
  }) : _googleSignIn = googleSignIn ?? GoogleSignIn.instance;

  final GoogleSignIn _googleSignIn;
  Future<void>? _initializeFuture;

  /// User saat ini (null bila belum login)
  final Rxn<GoogleSignInAccount> currentUser = Rxn<GoogleSignInAccount>();

  /// Convenience getters
  bool get isSignedIn => currentUser.value != null;
  GoogleSignInAccount? get user => currentUser.value;

  @override
  void onInit() {
    super.onInit();
    _initializeUserState();
  }

  @override
  void onReady() {
    super.onReady();
    // Coba silent sign-in saat service siap.
    _silentRestore();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> _initializeUserState() async {
    // GoogleSignIn doesn't provide a way to check current user state
    // We'll initialize as null and let the user sign in when needed
    currentUser.value = null;
  }

  Future<void> _silentRestore() async {
    // GoogleSignIn doesn't provide silent sign-in
    // We'll just ensure the state is clean
    currentUser.value = null;
  }

  Future<void> _ensureInitialized() async {
    if (_initializeFuture != null) {
      return _initializeFuture!;
    }

    _initializeFuture = _googleSignIn
        .initialize()
        .timeout(const Duration(seconds: 8), onTimeout: () {
      throw PlatformException(
        code: 'google_sign_in_init_timeout',
        message: 'Google Sign-In initialize timeout',
      );
    });

    try {
      await _initializeFuture!;
    } catch (e) {
      _initializeFuture = null;
      rethrow;
    }
  }

  /// Login (interactive jika belum signed-in).
  /// Mengembalikan akun atau null bila batal/gagal.
  Future<GoogleSignInAccount?> signIn() async {
    try {
      await _ensureInitialized();
      // Perform interactive sign-in
      final account =
          await _googleSignIn.authenticate(); // null jika user batal
      currentUser.value = account;
      return account;
    } on PlatformException catch (e) {
      debugPrint(
        'PlatformException during Google sign-in: ${e.code} ${e.message}',
      );
      return null;
    } catch (e) {
      debugPrint('Unknown error during Google sign-in: $e');
      return null;
    }
  }

  /// Ambil token autentikasi (idToken / accessToken).
  Future<GoogleSignInAuthentication?> getTokens() async {
    final u = currentUser.value;
    if (u == null) return null;
    try {
      return await u.authentication;
    } catch (e) {
      debugPrint('Failed to fetch tokens: $e');
      return null;
    }
  }

  /// Logout (tetap menyimpan consent, user bisa login lagi tanpa pilih akun).
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      currentUser.value = null;
    } catch (e) {
      debugPrint('Error during signOut: $e');
    }
  }

  /// Putuskan link dari perangkat (hapus consent; biasanya akan diminta pilih akun lagi).
  Future<void> disconnect() async {
    try {
      await _googleSignIn.disconnect();
      currentUser.value = null;
    } catch (e) {
      debugPrint('Error during disconnect: $e');
    }
  }
}
