import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/views/home_tabs/dashboard_tab_view.dart';
import 'package:meal_box/app/modules/home/views/home_tabs/notification_tab_view.dart';
import 'package:meal_box/app/modules/home/views/home_tabs/setting_tab_view.dart';
import 'package:meal_box/app/modules/home/views/home_tabs/wallet_tab_view.dart';

import 'bottom_navigation_controller.dart';

class HomeController extends GetxController {
  final BottomNavigationController bottomNavigationController =
      Get.find<BottomNavigationController>();

  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  final screens = const [
    DashboardTabView(),
    NotificationTabView(),
    WalletTabView(),
    SettingTabView()
  ];

  void openDrawer() {
    scaffoldState.currentState!.openEndDrawer();
  }
}
