import 'package:get/get.dart';
import 'package:meal_box/app/routes/app_pages.dart';
import 'package:meal_box/utils/my_storage.dart';

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
