import 'package:flutter/material.dart';

class EpicPasswordField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? errorText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final bool readOnly;
  final bool enabled;
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
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final String? helperText;
  final TextStyle? helperStyle;
  final bool showPasswordStrength;
  final bool showPasswordRequirements;

  const EpicPasswordField({
    super.key,
    this.label,
    this.hint,
    this.errorText,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.readOnly = false,
    this.enabled = true,
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
    this.focusNode,
    this.textInputAction,
    this.helperText,
    this.helperStyle,
    this.showPasswordStrength = false,
    this.showPasswordRequirements = false,
  });

  @override
  State<EpicPasswordField> createState() => _EpicPasswordFieldState();
}

class _EpicPasswordFieldState extends State<EpicPasswordField> {
  bool _obscureText = true;
  String _password = '';
  double _passwordStrength = 0.0;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _password = widget.controller!.text;
      if (widget.showPasswordStrength) {
        _calculatePasswordStrength();
      }
    }
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _onPasswordChanged(String value) {
    _password = value;
    if (widget.showPasswordStrength) {
      _calculatePasswordStrength();
    }
    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  void _calculatePasswordStrength() {
    double strength = 0.0;

    if (_password.isEmpty) {
      strength = 0.0;
    } else {
      // Length check
      if (_password.length >= 8) {
        strength += 0.25;
      }

      // Uppercase letters check
      if (_password.contains(RegExp(r'[A-Z]'))) {
        strength += 0.25;
      }

      // Numbers check
      if (_password.contains(RegExp(r'[0-9]'))) {
        strength += 0.25;
      }

      // Special characters check
      if (_password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        strength += 0.25;
      }
    }

    setState(() {
      _passwordStrength = strength;
    });
  }

  Color _getStrengthColor() {
    if (_passwordStrength <= 0.25) {
      return Colors.red;
    } else if (_passwordStrength <= 0.5) {
      return Colors.orange;
    } else if (_passwordStrength <= 0.75) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  String _getStrengthText() {
    if (_passwordStrength <= 0.25) {
      return 'Lemah';
    } else if (_passwordStrength <= 0.5) {
      return 'Sedang';
    } else if (_passwordStrength <= 0.75) {
      return 'Kuat';
    } else {
      return 'Sangat Kuat';
    }
  }

  bool _hasUppercase() => _password.contains(RegExp(r'[A-Z]'));
  bool _hasDigit() => _password.contains(RegExp(r'[0-9]'));
  bool _hasSpecialChar() => _password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool _hasMinLength() => _password.length >= 8;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          readOnly: widget.readOnly,
          enabled: widget.enabled,
          onChanged: _onPasswordChanged,
          onSubmitted: widget.onSubmitted,
          focusNode: widget.focusNode,
          textInputAction: widget.textInputAction,
          style: widget.textStyle ?? TextStyle(
            fontSize: 16,
            color: theme.textTheme.bodyLarge?.color,
          ),
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hint,
            errorText: widget.errorText,
            helperText: widget.helperText,
            helperStyle: widget.helperStyle,
            prefixIcon: widget.prefixIcon ?? Icon(Icons.lock_outline),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                color: theme.hintColor,
              ),
              onPressed: _toggleObscureText,
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
          ),
        ),

        if (widget.showPasswordStrength && _password.isNotEmpty) ...[
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: _passwordStrength,
                  backgroundColor: theme.dividerColor,
                  color: _getStrengthColor(),
                  minHeight: 4,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(width: 8),
              Text(
                _getStrengthText(),
                style: TextStyle(
                  color: _getStrengthColor(),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],

        if (widget.showPasswordRequirements && _password.isNotEmpty) ...[
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Password harus memiliki:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              _buildRequirement('Minimal 8 karakter', _hasMinLength()),
              _buildRequirement('Minimal 1 huruf besar', _hasUppercase()),
              _buildRequirement('Minimal 1 angka', _hasDigit()),
              _buildRequirement('Minimal 1 karakter spesial', _hasSpecialChar()),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildRequirement(String text, bool isMet) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Icon(
            isMet ? Icons.check_circle : Icons.cancel,
            color: isMet ? Colors.green : Colors.grey,
            size: 14,
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: isMet ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}