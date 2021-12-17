import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/models/notification_model.dart';
import 'package:meal_box/app/modules/home/providers/notification_provider.dart';

class NotificationTabController extends GetxController
    with StateMixin<NotificationModel> {
  @override
  void onInit() {
    super.onInit();
    getNotification();
  }

  void getNotification() {
    NotificationProvider().getNotifications().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error());
    });
  }
}
