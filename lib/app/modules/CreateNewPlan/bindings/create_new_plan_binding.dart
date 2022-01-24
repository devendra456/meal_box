import 'package:meal_box/imports.dart';

class CreateNewPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPlanController>(
      () => CreateNewPlanController(),
    );
    Get.put(SchoolNameController());
  }
}
