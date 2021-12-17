import 'package:get/get.dart';

import '../controllers/my_q_r_code_controller.dart';

class MyQRCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyQRCodeController>(
      () => MyQRCodeController(),
    );
  }
}
