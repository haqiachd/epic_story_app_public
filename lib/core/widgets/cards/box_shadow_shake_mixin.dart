part of 'box_shadow.dart';

/// Handles the optional shake animation lifecycle for [ShadowBox].
///
/// Extracted as a mixin so the animation controller, its tween, the
/// post-frame listener loop and disposal live in one place without changing
/// any visual behaviour of the widget.
mixin _ShadowBoxShakeMixin
    on State<ShadowBox>, SingleTickerProviderStateMixin<ShadowBox> {
  late final AnimationController shakeController;
  late final Animation<double> shakeAnimation;

  void initShake() {
    shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    shakeAnimation = Tween<double>(begin: 0, end: 5).animate(
      CurvedAnimation(parent: shakeController, curve: Curves.elasticInOut),
    );

    // Mulai mendeteksi perubahan pada shake
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startShakeListener();
    });
  }

  void _startShakeListener() async {
    while (mounted) {
      if (widget.shake) {
        // Jalankan animasi jika shake bernilai true
        if (!shakeController.isAnimating) {
          await shakeController.forward();
          await shakeController.reverse();
        }
      } else {
        // Berhenti jika shake bernilai false
        shakeController.reset();
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }
  }

  void disposeShake() {
    shakeController.dispose();
  }
}
