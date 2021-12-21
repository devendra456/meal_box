import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

class CommonWidgets {
  static Widget imageView({
    double height = double.infinity,
    double width = double.infinity,
    String imageUrl = "https://picsum.photos/1920/1080",
    BoxFit boxFit = BoxFit.cover,
  }) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: AppTheme.black3,
      ),
      fit: boxFit,
    );
  }

  static AppBar appHeader({
    required final String title,
    final Widget actionButton = const SizedBox(),
  }) {
    return AppBar(
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Card(
          elevation: 2.0,
          margin: EdgeInsets.only(
            left: MyStorage().get(MyStorage.appLocale) == "en" ? 16 : 8,
            right: MyStorage().get(MyStorage.appLocale) == "en" ? 8 : 16,
            bottom: 12,
            top: 12,
          ),
          child: Icon(
            Icons.chevron_left,
            color: AppTheme.black1,
            size: 28,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: AppTheme.black1, fontSize: 18, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      actions: [actionButton],
    );
  }

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
