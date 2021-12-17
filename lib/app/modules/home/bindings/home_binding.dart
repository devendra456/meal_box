import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/controllers/app_drawer_controller.dart';
import 'package:meal_box/app/modules/home/controllers/bottom_navigation_controller.dart';
import 'package:meal_box/app/modules/home/controllers/dashboard_tab_controller.dart';
import 'package:meal_box/app/modules/home/controllers/notification_tab_controller.dart';
import 'package:meal_box/app/modules/home/controllers/setting_tab_controller.dart';
import 'package:meal_box/app/modules/home/controllers/wallet_tab_controller.dart';

import '../controllers/home_controller.dart';

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
    Get.lazyPut<BottomNavigationController>(
      () => BottomNavigationController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(AppDrawerController());
  }
}
