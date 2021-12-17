// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) =>
    json.encode(data.toJson());

class NotificationModel {
  NotificationModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<Datum> data;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
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
    required this.isNew,
    required this.time,
    required this.content,
  });

  int id;
  bool isNew;
  String time;
  String content;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        isNew: json["isNew"],
        time: json["time"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isNew": isNew,
        "time": time,
        "content": content,
      };
}
