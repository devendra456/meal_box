import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/controllers/school_name_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.put(SchoolNameController());
  }
}
