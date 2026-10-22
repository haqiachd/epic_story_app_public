import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/constants/api_key.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/children_remote_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService extends GetxService {
  late FirebaseAuth _auth;
  late FirebaseFirestore _db;
  DocumentReference? _dbStudent;
  Rx<User?> firebaseUser = Rx<User?>(null);

  FirebaseAuth get auth => _auth;

  FirebaseFirestore get db => _db;

  DocumentReference? get dbStudent => _dbStudent;

  bool isLoggedIn() => firebaseUser.value != null;

  Future<FirebaseService> init({required FirebaseApp firebaseApp}) async {
    _auth = FirebaseAuth.instanceFor(app: firebaseApp);
    _db = FirebaseFirestore.instanceFor(app: firebaseApp);

    EpicLog.debug('userUid: ${_auth.currentUser?.uid}');
    if (_auth.currentUser != null) {
      _dbStudent = _db.collection('childrens').doc(_auth.currentUser!.uid);
    }
    firebaseUser.value = _auth.currentUser;
    _auth.authStateChanges().listen((User? user) {
      firebaseUser.value = user;
    });
    unawaited(
      syncGeminiApiKey().timeout(
        const Duration(seconds: 8),
        onTimeout: () {
          EpicLog.debug('syncGeminiApiKey timeout, startup continues');
        },
      ).catchError((error, stackTrace) {
        EpicLog.exception(
          error,
          stackTrace,
          this,
          'init.syncGeminiApiKey.background',
        );
      }),
    );

    return this;
  }

  Future<void> syncGeminiApiKey() async {
    try {
      final docRef = _db.collection('metadata').doc('gemini_key');
      final docSnapshot = await docRef.get();
      if (docSnapshot.exists) {
        final data = docSnapshot.data();
        if (data != null && data['active_key'] != null) {
          ApiKey.gemini = data['active_key'];
          EpicLog.debug(
              'Gemini API key updated from Firestore: ${ApiKey.gemini}');
        } else {
          EpicLog.debug(
              'Gemini API key document exists but "active_key" field is missing');
        }
      } else {
        EpicLog.debug('Gemini API key document does not exist in Firestore');
      }
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'syncGeminiApiKey');
    }
  }

  Future<void> incrementGeminiApiKeyUsage() async {
    try {
      final docRef = _db.collection('metadata').doc('gemini_key');
      await docRef.set({
        'usage_count': FieldValue.increment(1),
        'last_used': Timestamp.now(),
      }, SetOptions(merge: true));
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'incrementGeminiApiKeyUsage');
    }
  }

  // Logout pengguna
  Future<void> logout() async {
    await _auth.signOut();
    firebaseUser.value = null;
    _dbStudent = null;
  }

  Future<bool> loginWithGoogle({
    required GoogleSignInAccount googleSignIn,
    bool ignoreAnonymous = false,
  }) async {
    try {
      // Get analytics service once
      UserCredential? userCredential;

      // Get authentication tokens once
      final GoogleSignInAuthentication googleAuth = googleSignIn.authentication;
      final credential = GoogleAuthProvider.credential(
        // accessToken: googleAuth.idToken,
        idToken: googleAuth.idToken,
      );

      // Handle linking or signing in based on current state
      if (_auth.currentUser != null && _auth.currentUser!.isAnonymous) {
        try {
          // Try to link anonymous account
          userCredential =
              await _auth.currentUser!.linkWithCredential(credential);
          EpicLog.debug('loginGoogleTest-test if ucd');
        } catch (ex) {
          if (ignoreAnonymous) {
            // If linking fails, sign in normally
            userCredential = await _auth.signInWithCredential(credential);
          } else {
            EpicLog.debug('loginGoogleTest-test if catch');
            return false;
          }
        }
      } else {
        EpicLog.debug('loginGoogleTest-test if else');
        // Direct sign in
        userCredential = await _auth.signInWithCredential(credential);
      }

      // Update user reference
      firebaseUser.value = userCredential.user;
      _dbStudent = _db.collection('childrens').doc(_auth.currentUser!.uid);

      bool createdChildren = await createChildren();

      return createdChildren;
    } catch (e, s) {
      EpicLog.exception(e, s, this, 'Login With Google Catch Firebase-Service');
      return false;
    }
  }

  Future<bool> createChildren() async {
    try {
      if (_auth.currentUser == null) {
        return false;
      }

      // cek apakah user sudah ada
      var childrenDoc = await _db
          .collection('childrens')
          .doc(
            _auth.currentUser!.uid,
          )
          .get();

      if (childrenDoc.exists) {
        // update lastSignInAt dan updatedAt
        await _db.collection('childrens').doc(_auth.currentUser!.uid).update({
          'lastSignInAt': Timestamp.now(),
          'updatedAt': Timestamp.now(),
        });
        return true;
      }

      // buat data children baru

      var createChildren = ChildrenRemoteModel(
        userId: _auth.currentUser!.uid,
        fullName: _auth.currentUser!.displayName,
        email: _auth.currentUser!.email,
        photoPicture: _auth.currentUser!.photoURL,
        collections: {},
        gender: null,
        gradeClass: null,
        dateBirth: null,
        lastSignInAt: Timestamp.now(),
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
      );

      await _db.collection('childrens').doc(_auth.currentUser!.uid).set(
            createChildren.toJson(),
            SetOptions(merge: true),
          );
      return true;
    } catch (e, s) {
      EpicLog.exception(e, s, this, 'createChildren');
      return false;
    }
  }
}
