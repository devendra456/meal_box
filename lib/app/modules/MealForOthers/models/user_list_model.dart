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
  List<UserData> data;

  factory UserListModel.fromJson(Map<String, dynamic> json) => UserListModel(
        status: json["status"],
        success: json["success"],
        data: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UserData {
  UserData({
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

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
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
