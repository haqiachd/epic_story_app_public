import 'package:epic_story_app/core/styles/epic_colors.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EpicSnackBar {
  static void showSuccessSnackBar(String title, String message, {Duration? duration, bool showLog = true}) {
    if(showLog) EpicLog.info(message);
    Get.snackbar(
      title,
      message,
      backgroundColor: EpicColors.primary,
      colorText: EpicColors.onPrimary,
      icon: const Icon(Icons.check_circle, color: EpicColors.onPrimary),
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
      duration: duration ?? const Duration(milliseconds: 1500),
    );
  }

  static void showPendingSnackBar(String title, String message, {Duration? duration, bool showLog = true}) {
    if(showLog) EpicLog.info(message);
    Get.snackbar(
      title,
      message,
      backgroundColor: EpicColors.secondary,
      colorText: EpicColors.onSecondary,
      icon: const Icon(Icons.hourglass_empty, color: EpicColors.onSecondary),
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
      duration: duration ?? const Duration(milliseconds: 1500),
    );
  }

  static void showErrorSnackBar(String title, String message, {Duration? duration, bool showLog = true}) {
    if(showLog) EpicLog.error(message);
    Get.snackbar(
      title,
      message,
      backgroundColor: EpicColors.error,
      colorText: EpicColors.onError,
      icon: const Icon(Icons.error, color: EpicColors.onError),
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
      duration: duration ?? const Duration(milliseconds: 1500),
    );
  }

  static void showWarningSnackBar(String title, String message, {Duration? duration, bool showLog = true}) {
    if(showLog) EpicLog.info(message);
    Get.snackbar(
      title,
      message,
      backgroundColor: EpicColors.warning,
      colorText: EpicColors.onWarning,
      icon: const Icon(Icons.warning, color: EpicColors.onWarning),
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
      duration: duration ?? const Duration(milliseconds: 1500),
    );
  }

}
