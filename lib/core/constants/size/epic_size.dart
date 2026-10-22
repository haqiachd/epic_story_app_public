import 'package:flutter/material.dart';

class EpicSize {
  static late double initSize;
  static const String _defaultFont = 'Inter';
  static const Color _defaultTextColor = Colors.black;

  // Variabel untuk ukuran width
  static late double sizeSuperSmall;
  static late double sizeSmall;
  static late double sizeSmallMedium;
  static late double sizeMedium;
  static late double sizeMediumLarge;

  // Variabel untuk ukuran font
  static late TextStyle bodySmall;
  static late TextStyle bodyMedium;
  static late TextStyle bodyLarge;
  static late TextStyle titleSmall;
  static late TextStyle titleMedium;
  static late TextStyle titleLarge;
  static late TextStyle headlineMedium;
  static late TextStyle headlineLarge;

  // Variabel untuk radius
  static late BorderRadius radiusExtraSmall;
  static late BorderRadius radiusSmall;

  static late double screenWidth;
  static late double screenHeight;

  static void initialize(BuildContext context) {
    double screenEndpointWidth = MediaQuery.of(context).size.width;

    if (screenEndpointWidth < 400) {
      initSize = 0.8;
    } else if (screenEndpointWidth < 600) {
      initSize = 1.0;
    } else if (screenEndpointWidth >= 600 && screenEndpointWidth < 720) {
      initSize = 1.5;
    } else if (screenEndpointWidth >= 720 && screenEndpointWidth < 900) {
      initSize = 2.0;
    } else if (screenEndpointWidth >= 900 && screenEndpointWidth < 1200) {
      initSize = 2.5;
    } else {
      initSize = 3.0;
    }

    initComponents(context);
  }

  static void initComponents(BuildContext context) {
    // Inisialisasi ukuran width
    sizeSuperSmall = calculatedSize(2);
    sizeSmall = calculatedSize(8);
    sizeSmallMedium = calculatedSize(12);
    sizeMedium = calculatedSize(16);
    sizeMediumLarge = calculatedSize(20);

    // Inisialisasi ukuran font
    bodySmall = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(6),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    bodyMedium = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(8),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    bodyLarge = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(10),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    titleSmall = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(12),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    titleMedium = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(14),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    titleLarge = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(16),
      fontWeight: FontWeight.normal,
      color: _defaultTextColor,
    );
    headlineMedium = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(24),
      fontWeight: FontWeight.bold,
      color: _defaultTextColor,
    );
    headlineLarge = TextStyle(
      fontFamily: _defaultFont,
      fontSize: calculatedSize(28),
      fontWeight: FontWeight.bold,
      color: _defaultTextColor,
    );

    // Inisialisasi ukuran radius
    radiusExtraSmall = BorderRadius.circular(calculatedSize(4));
    radiusSmall = BorderRadius.circular(calculatedSize(8));

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  // Fungsi statik untuk menghitung ukuran berdasarkan initSize
  static double calculatedSize(double baseSize) {
    return baseSize * initSize;
  }
}
