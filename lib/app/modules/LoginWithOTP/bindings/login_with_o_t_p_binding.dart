import 'package:get/get.dart';

import '../controllers/login_with_o_t_p_controller.dart';

class LoginWithOTPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginWithOTPController>(
      () => LoginWithOTPController(),
    );
  }
}
