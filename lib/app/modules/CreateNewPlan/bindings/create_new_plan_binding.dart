import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/controllers/school_name_controller.dart';

import '../controllers/create_new_plan_controller.dart';

class CreateNewPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPlanController>(
      () => CreateNewPlanController(),
    );
    Get.put(SchoolNameController());
  }
}
