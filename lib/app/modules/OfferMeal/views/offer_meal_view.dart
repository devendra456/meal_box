import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

import '../controllers/offer_meal_controller.dart';

class OfferMealView extends GetView<OfferMealController> {
  const OfferMealView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: "OfferMeal".tr,
        actionButton: historyButton(),
      ),
      floatingActionButton: Container(
        height: 48,
        decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            gradient: LinearGradient(
                colors: [AppTheme.accentColor1, AppTheme.accentColor2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            shadows: [
              BoxShadow(
                  color: AppTheme.black3,
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                  spreadRadius: 0.5)
            ]),
        child: MaterialButton(
          onPressed: () {
            controller.goToSendMoneyPage();
          },
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          height: 48,
          shape: const StadiumBorder(),
          child: Text(
            "Donate 4 student",
            style: TextStyle(
              color: AppTheme.white,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Obx(() {
        if (controller.usersList.isNotEmpty) {
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
                                              controller
                                                  .usersList[index].userName,
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
                                        controller.usersList[index].schoolName,
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
                                              text: controller.usersList[index]
                                                  .registrationId,
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
                                                    text: controller
                                                        .usersList[index].city,
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
                                                    text: controller
                                                        .usersList[index]
                                                        .region,
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
                                      //controller.viewHistory();
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(),
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      "assets/call_icon"
                                      ".svg",
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      controller.usersList[index].mobile,
                                      style: TextStyle(
                                        color: AppTheme.black1,
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
                                      "assets/pay_icon.svg",
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      "SendMoney".tr,
                                      style: const TextStyle(
                                        /*color:
                                            Color.fromARGB(255, 90, 153, 239),*/
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: MyStorage().get(MyStorage.appLocale) == "en"
                          ? null
                          : -4,
                      right: MyStorage().get(MyStorage.appLocale) == "en"
                          ? -4
                          : null,
                      top: -4,
                      child: Checkbox(
                        value: controller.usersList[index].isSelected,
                        onChanged: (bool? value) {
                          controller.onChange(index);
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: controller.usersList.length,
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
                      //controller.goToCreateUser();
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

  Widget historyButton() {
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
            controller.goToOfferHistoryPage();
          },
          padding: const EdgeInsets.all(0),
          shape: const StadiumBorder(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/history_icon.svg",
                color: AppTheme.white,
                height: 10,
                width: 10,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "History".tr,
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
