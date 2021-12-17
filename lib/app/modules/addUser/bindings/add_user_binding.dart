import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/controllers/school_name_controller.dart';

import '../controllers/add_user_controller.dart';

class AddUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUserController>(
      () => AddUserController(),
    );
    Get.put(SchoolNameController());
  }
}
