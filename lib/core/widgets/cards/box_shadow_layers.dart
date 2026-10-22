part of 'box_shadow.dart';

/// The drop-shadow layer rendered behind the card.
///
/// This is the exact content that previously lived inside the
/// `Positioned.fill` of [ShadowBox]'s build. It is kept as a plain child
/// (not a `Positioned`) so the parent `Stack` still sees `Positioned.fill`
/// as its direct child and layout is unchanged.
class _ShadowLayer extends StatelessWidget {
  const _ShadowLayer({
    required this.duration,
    required this.paddingShadow,
    required this.shadowColor,
    required this.shadowGradient,
    required this.radius,
  });

  final int duration;
  final double paddingShadow;
  final Color shadowColor;
  final Gradient? shadowGradient;
  final BorderRadius radius;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: duration),
      margin: EdgeInsets.only(
        top: paddingShadow,
        left: paddingShadow,
      ),
      decoration: BoxDecoration(
        color: shadowGradient == null ? shadowColor : null,
        gradient: shadowGradient,
        borderRadius: radius,
      ),
    );
  }
}

/// The foreground card layer, including the shake transform and the
/// move/hover animation.
///
/// This is the exact content that previously lived inside the second
/// `Positioned` of [ShadowBox]'s build.
class _CardLayer extends StatelessWidget {
  const _CardLayer({
    required this.shakeAnimation,
    required this.shake,
    required this.paddingShadow,
    required this.isMoved,
    required this.isHovered,
    required this.activeGradient,
    required this.cardColor,
    required this.borderWidthRatio,
    required this.radius,
    required this.padding,
    required this.width,
    required this.height,
    required this.alignment,
    required this.child,
  });

  final Animation<double> shakeAnimation;
  final bool shake;
  final double paddingShadow;
  final bool isMoved;
  final bool isHovered;
  final Gradient? activeGradient;
  final CardBoxModel cardColor;
  final double? borderWidthRatio;
  final BorderRadius radius;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: shakeAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(
            shake
                ? shakeAnimation.value *
                    (shakeAnimation.value.isNegative ? -1 : 1)
                : 0,
            0,
          ),
          child: child,
        );
      },
      child: AnimatedContainer(
        margin: EdgeInsets.only(
          right: paddingShadow,
          bottom: paddingShadow,
        ),
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
            isMoved ? (paddingShadow / 2) : 0,
            isMoved ? (paddingShadow / 2) : 0,
            0),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: activeGradient == null
              ? (isHovered
                  ? cardColor.hoverColor.backgroundColor
                  : cardColor.backgroundColor)
              : null,
          gradient: activeGradient,
          borderRadius: radius,
          border: Border.all(
            color: isHovered
                ? cardColor.hoverColor.shadowColor
                : cardColor.shadowColor,
            width: paddingShadow / (borderWidthRatio ?? 1),
          ),
        ),
        child: Container(
          padding: padding,
          width: width,
          height: height,
          alignment: alignment,
          child: child,
        ),
      ),
    );
  }
}
