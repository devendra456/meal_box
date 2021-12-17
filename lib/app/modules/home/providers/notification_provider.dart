import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:meal_box/app/modules/home/models/notification_model.dart';

class NotificationProvider {
  Future<NotificationModel> getNotifications() async {
    final response = await rootBundle.loadString("jsons/notification.json");

    return NotificationModel.fromJson(jsonDecode(response));
  }
}
