import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/controllers/school_name_controller.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.put(SchoolNameController());
  }
}
