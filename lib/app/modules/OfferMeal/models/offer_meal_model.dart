// To parse this JSON data, do
//
//     final offerMealModel = offerMealModelFromJson(jsonString);

import 'dart:convert';

OfferMealModel offerMealModelFromJson(String str) =>
    OfferMealModel.fromJson(json.decode(str));

String offerMealModelToJson(OfferMealModel data) => json.encode(data.toJson());

class OfferMealModel {
  OfferMealModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<OfferMealData> data;

  factory OfferMealModel.fromJson(Map<String, dynamic> json) => OfferMealModel(
        status: json["status"],
        success: json["success"],
        data: List<OfferMealData>.from(json["data"].map((x) => OfferMealData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class OfferMealData {
  OfferMealData({
    required this.id,
    required this.userName,
    required this.profilePic,
    required this.schoolName,
    required this.registrationId,
    required this.city,
    required this.region,
    required this.mobile,
    required this.isSelected,
  });

  int id;
  String userName;
  String profilePic;
  String schoolName;
  String registrationId;
  String city;
  String region;
  String mobile;
  bool isSelected;

  factory OfferMealData.fromJson(Map<String, dynamic> json) => OfferMealData(
        id: json["id"],
        userName: json["userName"],
        profilePic: json["profilePic"],
        schoolName: json["schoolName"],
        registrationId: json["registrationId"],
        city: json["city"],
        region: json["region"],
        mobile: json["mobile"],
        isSelected: json["isSelected"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "profilePic": profilePic,
        "schoolName": schoolName,
        "registrationId": registrationId,
        "city": city,
        "region": region,
        "mobile": mobile,
        "isSelected": isSelected,
      };
}
