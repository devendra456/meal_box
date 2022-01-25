import 'package:meal_box/imports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      navigate();
    });
    super.onInit();
  }

  void navigate() {
    bool isUserFirstTime = MyStorage().get(MyStorage.isUserFirstTime) ?? false;
    bool isUserLogin = MyStorage().get(MyStorage.isUserLogin) ?? false;
    if (isUserLogin) {
      Get.offNamed(Routes.home);
    } else if (!isUserFirstTime) {
      Get.offNamed(Routes.intro);
    } else {
      Get.offNamed(Routes.login);
    }
  }
}
