// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  NotificationModel({
    required this.status,
    required this.success,
    required this.data,
  });

  int status;
  bool success;
  List<NotificationData> data;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        status: json["status"],
        success: json["success"],
        data: List<NotificationData>.from(json["data"].map((x) => NotificationData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class NotificationData {
  NotificationData({
    required this.id,
    required this.isNew,
    required this.time,
    required this.content,
  });

  int id;
  bool isNew;
  String time;
  String content;

  factory NotificationData.fromJson(Map<String, dynamic> json) => NotificationData(
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
