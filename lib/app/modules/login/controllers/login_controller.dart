import 'package:meal_box/imports.dart';

class LoginController extends GetxController {
  void goToRegisterScreen() {
    Get.toNamed(Routes.register);
  }

  void goToLoginWithOTP() {
    Get.toNamed(Routes.loginWithOTP);
  }

  void goToHomePage() {
    MyStorage().insert(MyStorage.isUserLogin, true);
    Get.toNamed(Routes.home);
  }
}
