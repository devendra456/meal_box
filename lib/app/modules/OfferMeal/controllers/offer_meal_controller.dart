import 'package:meal_box/imports.dart';

class OfferMealController extends GetxController /*with StateMixin<OfferMealModel>*/ {
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
    Get.toNamed(Routes.sendMoney);
  }

  void goToOfferHistoryPage() {
    Get.toNamed(Routes.offerHistory);
  }
}
