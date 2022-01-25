
import 'package:meal_box/imports.dart';

class MyMealPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyMealPlanController>(
      () => MyMealPlanController(),
    );
  }
}
