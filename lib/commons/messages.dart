import 'package:meal_box/imports.dart';

class Messages {
  static showSuccessMessage(String message, {String status = "Success"}) {
    Get.snackbar(
      status,
      message,
      backgroundColor: AppTheme.green,
      colorText: AppTheme.white,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
    );
  }

  static showInfoMessage(String message, {String status = "Info"}) {
    Get.snackbar(
      status,
      message,
      backgroundColor: AppTheme.yellow,
      colorText: AppTheme.white,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
    );
  }

  static showErrorMessage(String message, {String status = "Error"}) {
    Get.snackbar(
      status,
      message,
      backgroundColor: AppTheme.red,
      colorText: AppTheme.white,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
    );
  }
}
