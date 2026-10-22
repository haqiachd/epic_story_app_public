import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EpicDatePicker extends StatefulWidget {
  final String? label;
  final String hint;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime?) onDateSelected;
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
  final bool readOnly;
  final bool enabled;
  final String dateFormat;
  final Color? iconColor;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? helperText;
  final TextStyle? helperStyle;
  final bool clearable;

  const EpicDatePicker({
    Key? key,
    this.label,
    this.hint = 'Pilih tanggal',
    this.initialDate,
    this.firstDate,
    this.lastDate,
    required this.onDateSelected,
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
    this.readOnly = false,
    this.enabled = true,
    this.dateFormat = 'dd MMM yyyy',
    this.iconColor,
    this.focusNode,
    this.controller,
    this.helperText,
    this.helperStyle,
    this.clearable = true,
  }) : super(key: key);

  @override
  State<EpicDatePicker> createState() => _EpicDatePickerState();
}

class _EpicDatePickerState extends State<EpicDatePicker> {
  late TextEditingController _controller;
  DateTime? _selectedDate;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _selectedDate = widget.initialDate;
    if (_selectedDate != null) {
      _controller.text = DateFormat(widget.dateFormat).format(_selectedDate!);
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    if (!widget.enabled) return;

    final DateTime now = DateTime.now();
    final DateTime firstDate = widget.firstDate ?? DateTime(1900);
    final DateTime lastDate = widget.lastDate ?? DateTime(now.year + 100, 12, 31);
    final DateTime initialDate = _selectedDate ?? widget.initialDate ?? now;

    // Ensure initialDate is within valid range
    final DateTime validInitialDate = initialDate.isBefore(firstDate)
        ? firstDate
        : (initialDate.isAfter(lastDate) ? lastDate : initialDate);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: validInitialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).primaryColor,
              onPrimary: Colors.white,
              onSurface: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat(widget.dateFormat).format(picked);
      });
      widget.onDateSelected(_selectedDate);
    }
  }

  void _clearDate() {
    setState(() {
      _selectedDate = null;
      _controller.clear();
    });
    widget.onDateSelected(null);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      readOnly: true,
      enabled: widget.enabled,
      style: widget.textStyle ?? TextStyle(
        fontSize: 16,
        color: theme.textTheme.bodyLarge?.color,
      ),
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        errorText: widget.errorText,
        helperText: widget.helperText,
        helperStyle: widget.helperStyle,
        prefixIcon: widget.prefixIcon ?? Icon(
          Icons.calendar_today,
          size: 20,
          color: widget.iconColor ?? theme.hintColor,
        ),
        suffixIcon: _selectedDate != null && widget.clearable
            ? IconButton(
          icon: Icon(
            Icons.close,
            size: 20,
            color: theme.hintColor,
          ),
          onPressed: widget.enabled ? _clearDate : null,
        )
            : Icon(
          Icons.arrow_drop_down,
          color: widget.iconColor ?? theme.hintColor,
        ),
        filled: widget.filled,
        fillColor: widget.fillColor ?? theme.cardColor,
        contentPadding: widget.contentPadding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? theme.dividerColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? theme.dividerColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.focusedBorderColor ?? theme.primaryColor,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.errorBorderColor ?? theme.colorScheme.error,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.errorBorderColor ?? theme.colorScheme.error,
            width: 2.0,
          ),
        ),
        labelStyle: widget.labelStyle,
        hintStyle: widget.hintStyle ?? TextStyle(
          color: theme.hintColor,
          fontSize: 14,
        ),
        errorStyle: widget.errorStyle ?? TextStyle(
          color: theme.colorScheme.error,
          fontSize: 12,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: theme.disabledColor.withOpacity(0.3),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}