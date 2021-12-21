import 'package:get/get.dart';

import '../controllers/offer_history_controller.dart';

class OfferHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHistoryController>(
      () => OfferHistoryController(),
    );
  }
}
