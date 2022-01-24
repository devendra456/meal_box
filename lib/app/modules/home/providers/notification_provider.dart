
import 'package:meal_box/imports.dart';

class NotificationProvider {
  Future<NotificationModel> getNotifications() async {
    final response = await rootBundle.loadString(Assets.notificationJSON);

    return NotificationModel.fromJson(jsonDecode(response));
  }
}
