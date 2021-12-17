import 'package:get/get.dart';

import '../controllers/meal_for_others_controller.dart';

class MealForOthersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealForOthersController>(
      () => MealForOthersController(),
    );
  }
}
