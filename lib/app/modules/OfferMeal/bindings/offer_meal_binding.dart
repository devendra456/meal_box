
import 'package:meal_box/imports.dart';

class OfferMealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferMealController>(
      () => OfferMealController(),
    );
  }
}
