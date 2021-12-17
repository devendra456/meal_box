import 'package:get/get.dart';

import '../controllers/my_meal_plan_controller.dart';

class MyMealPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyMealPlanController>(
      () => MyMealPlanController(),
    );
  }
}
