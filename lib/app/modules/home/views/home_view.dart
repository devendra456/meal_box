import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/views/bottom_navigation_view.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

import '../controllers/home_controller.dart';
import 'app_drawer_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationView(),
      endDrawer: const AppDrawerView(),
      key: controller.scaffoldState,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: MyStorage().get(MyStorage.appLocale) == "en" ? 24 : 8,
                  right: MyStorage().get(MyStorage.appLocale) == "en" ? 8 : 24),
              height: 64,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome".tr,
                        style: TextStyle(
                            color: AppTheme.accentColor1, fontSize: 16),
                      ),
                      Text(
                        "Devendra Maurya",
                        style: TextStyle(
                            color: AppTheme.black1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      controller.openDrawer();
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/hamburger_icon.svg",
                          height: 16,
                          width: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(() => controller.screens[
                  controller.bottomNavigationController.selectedIndex.value]),
            ),
          ],
        ),
      ),
    );
  }
}
