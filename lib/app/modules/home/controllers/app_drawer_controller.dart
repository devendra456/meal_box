import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/routes/app_pages.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/dialogs/logout_dialog.dart';
import 'package:meal_box/utils/my_storage.dart';

class AppDrawerController extends GetxController {
  String langCode = "";

  BoxDecoration unselectedBoxDecoration = BoxDecoration(
      border: Border.all(color: AppTheme.black3, width: 0.3),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: AppTheme.black3,
          blurRadius: 2,
          spreadRadius: 0.5,
          offset: const Offset(0.7, 0.7),
        ),
        BoxShadow(
          color: AppTheme.white,
        ),
      ]);

  BoxDecoration selectedBoxDecoration = BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
          colors: [AppTheme.accentColor1, AppTheme.accentColor2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      boxShadow: [
        BoxShadow(
          color: AppTheme.black3,
          blurRadius: 2,
          spreadRadius: 0.5,
          offset: const Offset(0.7, 0.7),
        ),
        BoxShadow(
          color: AppTheme.white,
        ),
      ]);

  @override
  void onInit() {
    langCode = MyStorage().get(MyStorage.appLocale) ?? 'en';
    super.onInit();
  }

  void changeLanguage() {
    if (langCode == 'ar') {
      langCode = 'en';
      Locale updatedLocale = const Locale('en', 'US');
      MyStorage().insert(MyStorage.appLocale, 'en');
      Get.updateLocale(updatedLocale);
    } else if (langCode == 'en') {
      langCode = 'ar';
      Locale updatedLocale = const Locale('ar', 'SA');
      MyStorage().insert(MyStorage.appLocale, 'ar');
      Get.updateLocale(updatedLocale);
    }
  }

  void onTapDrawerListItem(int index) {
    switch (index) {
      case 1:
        {
          Get.back();
          Get.toNamed(Routes.PROFILE);
          break;
        }
      case 2:
        {
          Get.back();
          Get.toNamed(Routes.CHANGE_PASSWORD);
          break;
        }
      case 3:
        {
          Get.back();
          Get.toNamed(Routes.MY_Q_R_CODE);
          break;
        }
      case 4:
        {
          Get.back();
          Get.toNamed(Routes.HISTORY);
          break;
        }
    }
  }

  void onTapLogout() {
    Get.dialog(const LogoutDialog());
  }
}
