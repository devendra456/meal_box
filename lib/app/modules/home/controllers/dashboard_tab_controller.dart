import 'package:get/get.dart';
import 'package:meal_box/app/routes/app_pages.dart';

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
