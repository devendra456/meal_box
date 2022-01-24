import 'package:meal_box/imports.dart';

class DashboardTabController extends GetxController {
  void goToMealForOthers() {
    Get.toNamed(Routes.mealForOthers);
  }

  void goToOfferMeal() {
    Get.toNamed(Routes.offerMeal);
  }

  void goToMyMealPlan() {
    Get.toNamed(Routes.myMealPlan);
  }
}
