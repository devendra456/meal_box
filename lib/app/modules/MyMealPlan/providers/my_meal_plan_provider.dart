import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/MyMealPlan/models/my_meal_plan_model.dart';

class MyMealPlanProvider extends GetConnect {
  Future<MyMealPlanModel> getMealPlan() async {
    final response = await rootBundle.loadString("jsons/my_meal_plan.json");

    return MyMealPlanModel.fromJson(jsonDecode(response));
  }
}
