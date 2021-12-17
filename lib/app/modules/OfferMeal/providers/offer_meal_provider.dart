import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/OfferMeal/models/offer_meal_model.dart';

class OfferMealProvider extends GetConnect {
  Future<OfferMealModel> getOfferedUsersList() async {
    final response = await rootBundle.loadString("jsons/offerMeal.json");
    return OfferMealModel.fromJson(jsonDecode(response));
  }
}
