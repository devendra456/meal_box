import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commans/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

import '../controllers/meal_for_others_controller.dart';

class MealForOthersView extends GetView<MealForOthersController> {
  const MealForOthersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: "UsersList".tr,
        actionButton: adduser(),
      ),
      body: controller.obx((data) {
        if (data!.data.isNotEmpty) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Stack(
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: ClipRRect(
                                    child: CommonWidgets.imageView(),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  height: 72,
                                  width: 72,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Text(
                                              data.data[index].userName,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: AppTheme.black1,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 36,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        data.data[index].schoolName,
                                        style: TextStyle(
                                          color: AppTheme.black2,
                                          fontSize: 12,
                                        ),
                                        maxLines: 1,
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      RichText(
                                        maxLines: 1,
                                        softWrap: false,
                                        text: TextSpan(
                                          text: "RegistrationID".tr + ": ",
                                          style: TextStyle(
                                            color: AppTheme.black1,
                                            fontSize: 12,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: data
                                                  .data[index].registrationId,
                                              style: TextStyle(
                                                color: AppTheme.black2,
                                              ),
                                              spellOut: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: RichText(
                                              maxLines: 1,
                                              softWrap: false,
                                              text: TextSpan(
                                                text: "City".tr + ": ",
                                                style: TextStyle(
                                                  color: AppTheme.black1,
                                                  fontSize: 12,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: data.data[index].city,
                                                    style: TextStyle(
                                                      color: AppTheme.black2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: RichText(
                                              maxLines: 1,
                                              softWrap: false,
                                              text: TextSpan(
                                                text: "Region".tr + ": ",
                                                style: TextStyle(
                                                  color: AppTheme.black1,
                                                  fontSize: 12,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        data.data[index].region,
                                                    style: TextStyle(
                                                      color: AppTheme.black2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 252, 252, 252),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      controller.viewHistory();
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(),
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      "assets/history_icon"
                                      ".svg",
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      "ViewHistory".tr,
                                      style: const TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 36,
                                  child: TextButton.icon(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(),
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      "assets/add_icon.svg",
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      "CreateNewPlan".tr,
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 90, 153, 239),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: MyStorage().get(MyStorage.appLocale) == "en"
                          ? null
                          : 12,
                      right: MyStorage().get(MyStorage.appLocale) == "en"
                          ? 12
                          : null,
                      top: 12,
                      child: InkWell(
                        onTap: () {
                          controller.removeUser(data.data[index]);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset(
                              "assets/delete_icon.svg",
                              height: 12,
                              width: 12,
                            ),
                            Text(
                              "Remove".tr,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 239, 15, 23),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: data.data.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/user_image.svg",
                  width: Get.width * 0.3,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "UsersNotFound".tr,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.black2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Get.height * 0.15),
                  width: Get.width * 0.75,
                  height: 40,
                  decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(
                          colors: [
                            AppTheme.accentColor1,
                            AppTheme.accentColor2
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shadows: [
                        BoxShadow(
                            color: AppTheme.black3,
                            offset: const Offset(0.5, 0.5),
                            blurRadius: 1,
                            spreadRadius: 0.5)
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      controller.goToCreateUser();
                    },
                    padding: const EdgeInsets.all(0),
                    shape: const StadiumBorder(),
                    child: Text(
                      "CREATE_NEW_USER".tr,
                      style: TextStyle(
                          color: AppTheme.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }

  Widget adduser() {
    return Container(
      padding: EdgeInsets.only(
          left: MyStorage().get(MyStorage.appLocale) == "en" ? 4 : 16,
          right: MyStorage().get(MyStorage.appLocale) == "en" ? 16 : 4,
          top: 16,
          bottom: 16),
      child: Container(
        width: 72,
        decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            gradient: LinearGradient(
                colors: [AppTheme.accentColor1, AppTheme.accentColor2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            shadows: [
              BoxShadow(
                  color: AppTheme.black3,
                  offset: const Offset(0.5, 0.5),
                  blurRadius: 1,
                  spreadRadius: 0.5)
            ]),
        child: MaterialButton(
          onPressed: () {
            controller.goToCreateUser();
          },
          padding: const EdgeInsets.all(0),
          shape: const StadiumBorder(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 12,
                color: AppTheme.white,
              ),
              Text(
                "AddUser".tr,
                style: TextStyle(
                    color: AppTheme.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 10),
              ),
              const SizedBox(
                width: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
