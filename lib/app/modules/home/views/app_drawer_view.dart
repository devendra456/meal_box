import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/controllers/app_drawer_controller.dart';
import 'package:meal_box/commans/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

class AppDrawerView extends GetView<AppDrawerController> {
  const AppDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ClipOval(
                      child: CommonWidgets.imageView(height: 64, width: 64),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Devendra Maurya",
                            style: TextStyle(
                                color: AppTheme.black1,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "S. V. M. Inter Collage Sagra Sundarpur "
                            "Pratapgarh (U.P.)",
                            style: TextStyle(
                                color: AppTheme.black3,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    const CloseButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 16, right: 16),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: controller.langCode == 'en'
                          ? controller.unselectedBoxDecoration
                          : controller.selectedBoxDecoration,
                      child: Center(
                        child: Text(
                          "ع",
                          style: TextStyle(
                            color: controller.langCode == 'en'
                                ? AppTheme.black1
                                : AppTheme.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      onPressed: () {
                        controller.changeLanguage();
                      },
                      icon: SvgPicture.asset(
                        "assets/arrow_icon.svg",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: controller.langCode == 'ar'
                          ? controller.unselectedBoxDecoration
                          : controller.selectedBoxDecoration,
                      child: Center(
                        child: Text(
                          "EN",
                          style: TextStyle(
                            color: controller.langCode == 'en'
                                ? AppTheme.white
                                : AppTheme.black1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(1);
                },
                leading: SvgPicture.asset(
                  "assets/profile_icon.svg",
                  width: 18,
                  height: 18,
                ),
                title: Text(
                  "Profile".tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(2);
                },
                leading: SvgPicture.asset(
                  "assets/change_password_icon.svg",
                  width: 18,
                  height: 18,
                ),
                title: Text(
                  "ChangePassword".tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(3);
                },
                leading: SvgPicture.asset(
                  "assets/my_qr_code_icon.svg",
                  width: 18,
                  height: 18,
                ),
                title: Text(
                  "MyQRCode".tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(4);
                },
                leading: SvgPicture.asset(
                  "assets/history_icon.svg",
                  width: 18,
                  height: 18,
                ),
                title: Text(
                  "History".tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapLogout();
                },
                leading: SvgPicture.asset(
                  "assets/logout_icon.svg",
                  width: 18,
                  height: 18,
                ),
                title: Text(
                  "Logout".tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
