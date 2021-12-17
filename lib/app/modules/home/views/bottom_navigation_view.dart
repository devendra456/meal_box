import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/controllers/bottom_navigation_controller.dart';
import 'package:meal_box/configs/app_theme.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: Obx(
          () => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SvgPicture.asset(
                      "assets/home_icon.svg",
                      color: controller.selectedIndex.value == 0
                          ? AppTheme.accentColor1
                          : AppTheme.black3,
                      height: 22,
                      width: 22,
                    ),
                  ),
                  label: "Dashboard".tr),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SvgPicture.asset(
                      "assets/bell_icon.svg",
                      color: controller.selectedIndex.value == 1
                          ? AppTheme.accentColor1
                          : AppTheme.black3,
                      height: 22,
                      width: 22,
                    ),
                  ),
                  label: "Notification".tr),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset(
                    "assets/wallet_icon.svg",
                    color: controller.selectedIndex.value == 2
                        ? AppTheme.accentColor1
                        : AppTheme.black3,
                    height: 22,
                    width: 22,
                  ),
                ),
                label: "Wallet".tr,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset(
                    "assets/setting_icon.svg",
                    color: controller.selectedIndex.value == 3
                        ? AppTheme.accentColor1
                        : AppTheme.black3,
                    height: 22,
                    width: 22,
                  ),
                ),
                label: "Setting".tr,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: AppTheme.accentColor1,
            onTap: controller.onTapItem,
            unselectedItemColor: AppTheme.black3,
            elevation: 20,
          ),
        ),
      ),
    );
  }
}
