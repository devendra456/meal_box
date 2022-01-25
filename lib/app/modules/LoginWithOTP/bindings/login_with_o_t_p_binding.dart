import 'package:meal_box/imports.dart';

class LoginWithOTPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginWithOTPController>(
      () => LoginWithOTPController(),
    );
  }
}
