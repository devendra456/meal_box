import 'package:meal_box/imports.dart';


class AppDrawerController extends GetxController {
  String langCode = "";

  BoxDecoration unselectedBoxDecoration = BoxDecoration(border: Border.all(color: AppTheme.black3, width: 0.3), shape: BoxShape.circle, boxShadow: [
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

  BoxDecoration selectedBoxDecoration =
      BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter), boxShadow: [
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
          Get.toNamed(Routes.profile);
          break;
        }
      case 2:
        {
          Get.back();
          Get.toNamed(Routes.changePassword);
          break;
        }
      case 3:
        {
          Get.back();
          Get.toNamed(Routes.myQRCode);
          break;
        }
      case 4:
        {
          Get.back();
          Get.toNamed(Routes.history);
          break;
        }
    }
  }

  void onTapLogout() {
    Get.dialog(const LogoutDialog());
  }
}
