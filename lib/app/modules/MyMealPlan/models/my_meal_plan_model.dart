// To parse this JSON data, do
//
//     final myMealPlanModel = myMealPlanModelFromJson(jsonString);

import 'dart:convert';

MyMealPlanModel myMealPlanModelFromJson(String str) =>
    MyMealPlanModel.fromJson(json.decode(str));

String myMealPlanModelToJson(MyMealPlanModel data) =>
    json.encode(data.toJson());

class MyMealPlanModel {
  MyMealPlanModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<MealData> data;

  factory MyMealPlanModel.fromJson(Map<String, dynamic> json) =>
      MyMealPlanModel(
        status: json["status"],
        success: json["success"],
        data: List<MealData>.from(json["data"].map((x) => MealData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class MealData {
  MealData({
    required this.id,
    required this.isPlanActive,
    required this.restaurantName,
    required this.mealType,
    required this.validity,
    required this.menus,
  });

  int id;
  bool isPlanActive;
  String restaurantName;
  String mealType;
  String validity;
  List<String> menus;

  factory MealData.fromJson(Map<String, dynamic> json) => MealData(
        id: json["id"],
        isPlanActive: json["isPlanActive"],
        restaurantName: json["restaurantName"],
        mealType: json["mealType"],
        validity: json["validity"],
        menus: List<String>.from(json["menus"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isPlanActive": isPlanActive,
        "restaurantName": restaurantName,
        "mealType": mealType,
        "validity": validity,
        "menus": List<dynamic>.from(menus.map((x) => x)),
      };
}
