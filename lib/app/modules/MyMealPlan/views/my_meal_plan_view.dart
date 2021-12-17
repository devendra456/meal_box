import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commans/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';

import '../controllers/my_meal_plan_controller.dart';

class MyMealPlanView extends GetView<MyMealPlanController> {
  const MyMealPlanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: "MyMealPlan".tr,
        actionButton: addMealButton(),
      ),
      body: controller.obx((data) {
        if (data!.data.isNotEmpty) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: data.data[index].isPlanActive
                            ? AppTheme.green
                            : AppTheme.red,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        data.data[index].isPlanActive
                            ? "CurrentPlan".tr
                            : "PlanExpired".tr,
                        style: TextStyle(
                          color: AppTheme.white,
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 115,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.data[index].restaurantName,
                                      style: TextStyle(
                                        color: AppTheme.accentColor1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      data.data[index].menus.join(", "),
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontSize: 12,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      color: AppTheme.lightBlue,
                                      child: Text(
                                        data.data[index].validity,
                                        style: TextStyle(
                                            color: AppTheme.black1,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        maxLines: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      data.data[index].mealType,
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 7,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: const StadiumBorder(),
                                      color: AppTheme.lightAccent1,
                                    ),
                                    child: Text(
                                      "ViewDetails".tr,
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      elevation: 2,
                      borderOnForeground: true,
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
                  "assets/no_meal_plan.svg",
                  width: Get.width * 0.5,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "NoMealPlanSelected".tr,
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
                      controller.goToCreateNewPage();
                    },
                    padding: const EdgeInsets.all(0),
                    shape: const StadiumBorder(),
                    child: Text(
                      "CREATE_NEW_MEAL_PLAN".tr,
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

  Widget addMealButton() {
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
            controller.goToCreateNewPage();
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
                "AddMeal".tr,
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
