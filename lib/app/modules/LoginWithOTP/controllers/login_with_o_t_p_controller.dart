import 'package:get/get.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class LoginWithOTPController extends GetxController {
  void goToOTPVerify() {
    Get.toNamed(Routes.otpVerify);
  }
}
