// To parse this JSON data, do
//
//     final schoolNameModel = schoolNameModelFromJson(jsonString);

import 'dart:convert';

SchoolNameModel schoolNameModelFromJson(String str) =>
    SchoolNameModel.fromJson(json.decode(str));

String schoolNameModelToJson(SchoolNameModel data) =>
    json.encode(data.toJson());

class SchoolNameModel {
  SchoolNameModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<SchoolNameData> data;

  factory SchoolNameModel.fromJson(Map<String, dynamic> json) =>
      SchoolNameModel(
        status: json["status"],
        success: json["success"],
        data: List<SchoolNameData>.from(
            json["data"].map((x) => SchoolNameData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class SchoolNameData {
  SchoolNameData({
    required this.id,
    required this.schoolName,
  });

  int id;
  String schoolName;

  factory SchoolNameData.fromJson(Map<String, dynamic> json) => SchoolNameData(
        id: json["id"],
        schoolName: json["schoolName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "schoolName": schoolName,
      };
}
