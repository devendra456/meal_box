import 'package:meal_box/imports.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingTabController>(
      () => SettingTabController(),
    );
    Get.lazyPut<WalletTabController>(
      () => WalletTabController(),
    );
    Get.lazyPut<NotificationTabController>(
      () => NotificationTabController(),
    );
    Get.lazyPut<DashboardTabController>(
      () => DashboardTabController(),
    );
    Get.put(HomeController());
    Get.put(AppDrawerController());
    Get.put(BottomNavigationController());
  }
}
