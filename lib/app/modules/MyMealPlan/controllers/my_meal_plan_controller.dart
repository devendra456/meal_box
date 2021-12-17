import 'package:get/get.dart';
import 'package:meal_box/app/modules/MyMealPlan/models/my_meal_plan_model.dart';
import 'package:meal_box/app/modules/MyMealPlan/providers/my_meal_plan_provider.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class MyMealPlanController extends GetxController
    with StateMixin<MyMealPlanModel> {
  @override
  void onInit() {
    super.onInit();
    getMealPlan();
  }

  void getMealPlan() {
    MyMealPlanProvider().getMealPlan().then(
      (value) {
        change(value, status: RxStatus.success());
      },
      onError: (error) {
        change(null, status: RxStatus.error());
      },
    );
  }

  void goToCreateNewPage() {
    Get.toNamed(Routes.createNewPlan);
  }
}
