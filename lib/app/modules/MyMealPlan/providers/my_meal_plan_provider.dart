import 'package:meal_box/imports.dart';

class MyMealPlanProvider extends GetConnect {
  Future<MyMealPlanModel> getMealPlan() async {
    final response = await rootBundle.loadString(Assets.myMealPlanJSON);
    return MyMealPlanModel.fromJson(jsonDecode(response));
  }
}
