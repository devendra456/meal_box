import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

class LanguageChooseView extends GetView {
  const LanguageChooseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () {
                Locale updatedLocale = const Locale('en', 'US');
                MyStorage().insert(MyStorage.appLocale, 'en');
                Get.updateLocale(updatedLocale);
                Get.back();
              },
              title: Text(
                "English",
                style: TextStyle(color: AppTheme.black1),
              ),
              leading: CircleAvatar(
                child: Text(
                  "EN",
                  style: TextStyle(
                      color: AppTheme.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: AppTheme.accentColor1,
              ),
            ),
            ListTile(
              onTap: () {
                Locale updatedLocale = const Locale('ar', 'SA');
                MyStorage().insert(MyStorage.appLocale, 'ar');
                Get.updateLocale(updatedLocale);
                Get.back();
              },
              title: const Text("عربى"),
              leading: CircleAvatar(
                child: Text(
                  "ع",
                  style: TextStyle(
                      color: AppTheme.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: AppTheme.accentColor1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
