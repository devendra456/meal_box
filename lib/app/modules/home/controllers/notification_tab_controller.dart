import 'package:meal_box/imports.dart';

class NotificationTabController extends GetxController with StateMixin<NotificationModel> {
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
