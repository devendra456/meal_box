import 'package:get/get.dart';
import 'package:meal_box/app/modules/OfferMeal/models/offer_meal_model.dart';
import 'package:meal_box/app/modules/OfferMeal/providers/offer_meal_provider.dart';

class OfferMealController extends GetxController
    with StateMixin<OfferMealModel> {
  @override
  void onInit() {
    getUsersList();
    super.onInit();
  }

  void getUsersList() {
    OfferMealProvider().getOfferedUsersList().then(
      (value) {
        change(value, status: RxStatus.success());
      },
      onError: (error) {
        change(null, status: RxStatus.error());
      },
    );
  }
}
