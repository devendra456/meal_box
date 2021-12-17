// To parse this JSON data, do
//
//     final userListModel = userListModelFromJson(jsonString);

import 'dart:convert';

UserListModel userListModelFromJson(String str) =>
    UserListModel.fromJson(json.decode(str));

String userListModelToJson(UserListModel data) => json.encode(data.toJson());

class UserListModel {
  UserListModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<Datum> data;

  factory UserListModel.fromJson(Map<String, dynamic> json) => UserListModel(
        status: json["status"],
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.userName,
    required this.profilePic,
    required this.schoolName,
    required this.registrationId,
    required this.city,
    required this.region,
  });

  int id;
  String userName;
  String profilePic;
  String schoolName;
  String registrationId;
  String city;
  String region;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userName: json["userName"],
        profilePic: json["profilePic"],
        schoolName: json["schoolName"],
        registrationId: json["registrationId"],
        city: json["city"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "profilePic": profilePic,
        "schoolName": schoolName,
        "registrationId": registrationId,
        "city": city,
        "region": region,
      };
}
