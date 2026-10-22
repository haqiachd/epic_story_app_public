import 'package:flutter/material.dart';

class CollectionColorModel {
  final Color color;
  final LinearGradient gradient;

  const CollectionColorModel({
    required this.color,
    required this.gradient,
  });
}

const List<CollectionColorModel> kCollectionColorPalette = [
  CollectionColorModel(
    color: Color(0xFFFF7A70),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFD1CC),
        Color(0xFFFF7A70),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFFFFB259),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFE0B8),
        Color(0xFFFFB259),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFFFFDE59),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFF4B0),
        Color(0xFFFFDE59),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFFE2F24A),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFF7FFC2),
        Color(0xFFE2F24A),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFFFF4FA3),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFC1E0),
        Color(0xFFFF4FA3),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFF9CFF38),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFE6FFBE),
        Color(0xFF9CFF38),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFF4BE38A),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFC8F7DB),
        Color(0xFF4BE38A),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFF56C9FF),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFC7EEFF),
        Color(0xFF56C9FF),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFF6F83FF),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFD8DEFF),
        Color(0xFF6F83FF),
      ],
    ),
  ),
  CollectionColorModel(
    color: Color(0xFFC47BFF),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFF0D8FF),
        Color(0xFFC47BFF),
      ],
    ),
  ),
];

CollectionColorModel collectionColorAt(int? index) {
  if (index == null || index < 0 || index >= kCollectionColorPalette.length) {
    return kCollectionColorPalette.first;
  }

  return kCollectionColorPalette[index];
}
