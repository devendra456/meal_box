
import 'package:meal_box/imports.dart';

class OTPVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPVerifyController>(
      () => OTPVerifyController(),
    );
  }
}
