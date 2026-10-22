import 'package:flutter/material.dart';

class EpicDropdown<T> extends StatelessWidget {
  final String? label;
  final String hint;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final Function(T?) onChanged;
  final String? errorText;
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
  final Widget? prefixIcon;
  final bool isExpanded;
  final bool isDense;
  final bool isEnabled;
  final Icon? dropdownIcon;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? iconSize;
  final double? menuMaxHeight;

  const EpicDropdown({
    Key? key,
    this.label,
    this.hint = 'Select an option',
    this.value,
    required this.items,
    required this.onChanged,
    this.errorText,
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
    this.prefixIcon,
    this.isExpanded = true,
    this.isDense = false,
    this.isEnabled = true,
    this.dropdownIcon,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.iconSize,
    this.menuMaxHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: labelStyle ?? TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          SizedBox(height: 6),
        ],
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: errorText != null
                  ? (errorBorderColor ?? theme.colorScheme.error)
                  : (borderColor ?? theme.dividerColor),
              width: 1.0,
            ),
            color: fillColor ?? (filled ? theme.cardColor : Colors.transparent),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                value: value,
                hint: Text(
                  hint,
                  style: hintStyle ?? TextStyle(
                    color: theme.hintColor,
                    fontSize: 14,
                  ),
                ),
                items: items,
                onChanged: isEnabled ? onChanged : null,
                isExpanded: isExpanded,
                isDense: isDense,
                icon: dropdownIcon ?? Icon(Icons.arrow_drop_down),
                iconEnabledColor: iconEnabledColor ?? theme.primaryColor,
                iconDisabledColor: iconDisabledColor ?? theme.disabledColor,
                iconSize: iconSize ?? 24,
                menuMaxHeight: menuMaxHeight,
                style: textStyle ?? TextStyle(
                  fontSize: 16,
                  color: theme.textTheme.bodyLarge?.color,
                ),
                dropdownColor: theme.cardColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
        ),
        if (errorText != null) ...[
          SizedBox(height: 4),
          Text(
            errorText!,
            style: errorStyle ?? TextStyle(
              color: theme.colorScheme.error,
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}

// Widget helper untuk membuat item dropdown dengan mudah
class EpicDropdownItem<T> {
  static DropdownMenuItem<T> build<T>({
    required T value,
    required String text,
    Widget? icon,
  }) {
    return DropdownMenuItem<T>(
      value: value,
      child: Row(
        children: [
          if (icon != null) ...[
            icon,
            SizedBox(width: 8),
          ],
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}