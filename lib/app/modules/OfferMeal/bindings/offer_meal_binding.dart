import 'package:get/get.dart';

import '../controllers/offer_meal_controller.dart';

class OfferMealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferMealController>(
      () => OfferMealController(),
    );
  }
}
