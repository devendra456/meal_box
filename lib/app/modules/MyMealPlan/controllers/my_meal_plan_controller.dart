import 'package:meal_box/imports.dart';

class MyMealPlanController extends GetxController with StateMixin<MyMealPlanModel> {
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
