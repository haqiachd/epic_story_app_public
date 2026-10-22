import 'package:flutter/material.dart';

class EpicAppSize {
  static late double initSize;
  static double borderWidthRatio = 1.8;

  static late BorderRadius radiusSmall;
  static late BorderRadius radiusLarge;
  static late double screenWidth;
  static late double screenHeight;

  static void initialize(BuildContext context) {
    double screenEndpointWidth = MediaQuery.of(context).size.width;

    if (screenEndpointWidth < 400) {
      initSize = 0.8;
    } else if (screenEndpointWidth < 600) {
      initSize = 0.9;
    } else if (screenEndpointWidth >= 600 && screenEndpointWidth < 720) {
      initSize = 1;
    } else if (screenEndpointWidth >= 720 && screenEndpointWidth < 900) {
      initSize = 1.1;
    } else if (screenEndpointWidth >= 900 && screenEndpointWidth < 1200) {
      initSize = 1.2;
    } else {
      initSize = 1.3;
    }

    radiusSmall = BorderRadius.circular(calculatedSize(8));
    radiusLarge = BorderRadius.circular(calculatedSize(20));

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  // Fungsi statik untuk menghitung ukuran berdasarkan initSize
  static double calculatedSize(double baseSize) {
    return baseSize * initSize;
  }
}
