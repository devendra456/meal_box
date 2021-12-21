import 'package:get/get.dart';
import 'package:meal_box/app/modules/OfferMeal/models/offer_meal_model.dart';
import 'package:meal_box/app/modules/OfferMeal/providers/offer_meal_provider.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class OfferMealController
    extends GetxController /*with StateMixin<OfferMealModel>*/ {
  RxList<dynamic> usersList = [].obs;

  @override
  void onInit() {
    getUsersList();
    super.onInit();
  }

/*  void getUsersList() {
    OfferMealProvider().getOfferedUsersList().then(
      (value) {
        change(value, status: RxStatus.success());
      },
      onError: (error) {
        change(null, status: RxStatus.error());
      },
    );
  }*/

  void getUsersList() async {
    OfferMealModel mealModel = await OfferMealProvider().getOfferedUsersList();
    usersList.value = mealModel.data;
  }

  void onChange(int index) {
    usersList[index].isSelected = !usersList[index].isSelected;
  }

  void goToSendMoneyPage() {
    Get.toNamed(Routes.SEND_MONEY);
  }

  void goToOfferHistoryPage() {
    Get.toNamed(Routes.OFFER_HISTORY);
  }
}
