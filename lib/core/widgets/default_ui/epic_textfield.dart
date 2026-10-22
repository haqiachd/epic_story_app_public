import 'package:epic_story_app/core/constants/size/epic_size.dart';
import 'package:epic_story_app/core/styles/epic_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EpicTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool enableSuggestions;
  final bool autocorrect;
  final double borderRadius;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? fillColor;
  final bool filled;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final bool expands;
  final bool enabled;

  const EpicTextField({
    super.key,
    this.label,
    this.hint,
    this.errorText,
    this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.borderRadius = 8.0,
    this.borderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.fillColor,
    this.filled = true,
    this.contentPadding,
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.errorStyle,
    this.inputFormatters,
    this.focusNode,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.expands = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
      expands: expands,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      style: textStyle ?? EpicSize.bodyLarge,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor ?? theme.cardColor,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: EpicSize.calculatedSize(16), vertical: EpicSize.calculatedSize(12)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? theme.dividerColor,
            width: EpicSize.calculatedSize(1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? theme.dividerColor,
            width: EpicSize.calculatedSize(1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: focusedBorderColor ?? theme.primaryColor,
            width: EpicSize.calculatedSize(2),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: errorBorderColor ?? theme.colorScheme.error,
            width: EpicSize.calculatedSize(1),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: errorBorderColor ?? theme.colorScheme.error,
            width: EpicSize.calculatedSize(2),
          ),
        ),
        labelStyle: labelStyle,
        hintStyle: hintStyle ?? EpicSize.bodyLarge.copyWith(
          color: EpicColors.hintText,
        ),
        errorStyle: errorStyle ?? EpicSize.bodyLarge.copyWith(
          color: EpicColors.errorText,
        ),
      ),
    );
  }
}