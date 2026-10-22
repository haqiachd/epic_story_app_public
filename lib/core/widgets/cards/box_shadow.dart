import 'package:epic_story_app/core/styles/card_box_model.dart';
import 'package:epic_story_app/core/styles/epic_app_size.dart';
import 'package:flutter/material.dart';

part 'box_shadow_shake_mixin.dart';
part 'box_shadow_layers.dart';

class ShadowBox extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final double? paddingShadow;
  final CardBoxModel cardColor;
  final Gradient? cardGradient;
  final Gradient? hoverGradient;
  final Gradient? shadowGradient;
  final BorderRadius? radius;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final int? duration;
  final VoidCallback? onTap;
  final Widget child;
  final bool isCanClick;
  final bool isShowShadow;
  final Alignment? alignment;
  final double? borderWidthRatio;
  final bool shake; // Parameter baru untuk shake

  const ShadowBox({
    super.key,
    required this.cardColor,
    this.cardGradient,
    this.hoverGradient,
    this.shadowGradient,
    this.padding,
    this.paddingShadow,
    this.radius,
    this.width,
    this.height,
    this.duration,
    this.onTap,
    this.fontWeight,
    required this.child,
    this.isShowShadow = true,
    this.isCanClick = false,
    this.alignment,
    this.borderWidthRatio,
    this.shake = false, // Default tidak shake
  });

  @override
  _ShadowBoxState createState() => _ShadowBoxState();
}

class _ShadowBoxState extends State<ShadowBox>
    with SingleTickerProviderStateMixin, _ShadowBoxShakeMixin {
  bool _isMoved = false;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    initShake();
  }

  @override
  void dispose() {
    disposeShake();
    super.dispose();
  }

  void _handleTap() {
    if (!widget.isCanClick) return;

    final defaultDuration = widget.duration ?? 150;
    setState(() {
      _isMoved = true;
      _isHovered = true;
    });

    Future.delayed(Duration(milliseconds: defaultDuration), () {
      // [PATCH CRAHLYTIC] Hindari setState pada state yang sudah dispose
      if (!mounted) {
        print(
            '[PATCH CRAHLYTIC] ShadowBox._handleTap: skip reset state because widget is no longer mounted');
        return;
      }

      setState(() {
        _isMoved = false;
        _isHovered = false;
      });

      Future.delayed(Duration(milliseconds: defaultDuration), () {
        if (!mounted) {
          print(
              '[PATCH CRAHLYTIC] ShadowBox._handleTap: skip onTap callback because widget is no longer mounted');
          return;
        }
        widget.onTap?.call();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double paddingShadow =
        widget.paddingShadow ?? EpicAppSize.calculatedSize(5);
    final radius = widget.radius ?? EpicAppSize.radiusSmall;
    final Gradient? activeGradient = _isHovered
        ? (widget.hoverGradient ?? widget.cardGradient)
        : widget.cardGradient;

    final Widget shadowWidget = Stack(
      children: [
        widget.isShowShadow
            ? Positioned.fill(
                child: _ShadowLayer(
                  duration: widget.duration ?? 300,
                  paddingShadow: paddingShadow,
                  shadowColor: widget.cardColor.shadowColor,
                  shadowGradient: widget.shadowGradient,
                  radius: radius,
                ),
              )
            : const SizedBox.shrink(),
        Positioned(
          child: _CardLayer(
            shakeAnimation: shakeAnimation,
            shake: widget.shake,
            paddingShadow: paddingShadow,
            isMoved: _isMoved,
            isHovered: _isHovered,
            activeGradient: activeGradient,
            cardColor: widget.cardColor,
            borderWidthRatio: widget.borderWidthRatio,
            radius: radius,
            padding: widget.padding,
            width: widget.width,
            height: widget.height,
            alignment: widget.alignment,
            child: widget.child,
          ),
        ),
      ],
    );

    return widget.isCanClick
        ? GestureDetector(
            onTap: _handleTap,
            child: shadowWidget,
          )
        : shadowWidget;
  }
}
