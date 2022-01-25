import 'package:meal_box/imports.dart';

class MealForOthersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealForOthersController>(
      () => MealForOthersController(),
    );
  }
}
