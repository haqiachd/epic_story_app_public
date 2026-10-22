import 'package:epic_story_app/core/constants/size/epic_size.dart';
import 'package:epic_story_app/core/constants/ui/app_size.dart';
import 'package:epic_story_app/core/styles/epic_colors.dart';
import 'package:flutter/material.dart';

class EpicButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? fontSize;
  final FontWeight? fontWeight;

  const EpicButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height = 50,
    this.borderRadius = 8.0,
    this.padding,
    this.isLoading = false,
    this.prefixIcon,
    this.suffixIcon,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? EpicColors.deepPurple,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading
            ? SizedBox(
                width: EpicSize.calculatedSize(24),
                height: EpicSize.calculatedSize(24),
                child: CircularProgressIndicator(
                  strokeWidth: EpicSize.calculatedSize(2),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    textColor ?? Colors.white,
                  ),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixIcon != null) ...[
                    prefixIcon!,
                    AppSize.spacingSWidth(),
                  ],
                  Text(
                    text,
                    style: EpicSize.headlineMedium.copyWith(
                      color: EpicColors.white,
                    ),
                  ),
                  if (suffixIcon != null) ...[
                    AppSize.spacingSWidth(),
                    suffixIcon!,
                  ],
                ],
              ),
      ),
    );
  }
}
