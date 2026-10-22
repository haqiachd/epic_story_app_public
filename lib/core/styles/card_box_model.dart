import 'package:flutter/material.dart';

import 'hover_box_model.dart';

class CardBoxModel {
  final Color backgroundColor;
  final Color shadowColor;
  final Color textColor;
  final HoverBoxModel hoverColor;

  const CardBoxModel({
    required this.backgroundColor,
    required this.shadowColor,
    required this.textColor,
    required this.hoverColor,
  });

  CardBoxModel copyWith({
    Color? backgroundColor,
    Color? shadowColor,
    Color? textColor,
    HoverBoxModel? hoverColor,
  }) {
    return CardBoxModel(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      textColor: textColor ?? this.textColor,
      hoverColor: hoverColor ?? this.hoverColor,
    );
  }
}
