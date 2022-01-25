import 'package:meal_box/imports.dart';

class OfferHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHistoryController>(
      () => OfferHistoryController(),
    );
  }
}
