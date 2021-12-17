import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/home/controllers/dashboard_tab_controller.dart';
import 'package:meal_box/configs/app_theme.dart';

class DashboardTabView extends GetView<DashboardTabController> {
  const DashboardTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 24,
        ),
        Image.asset(
          "assets/intro_image3.png",
          width: MediaQuery.of(context).size.width * .7,
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.9,
            ),
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              InkWell(
                onTap: () {
                  controller.goToMyMealPlan();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: SvgPicture.asset(
                            "assets/dashboard_icon1.svg",
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "MyMealPlan".tr,
                          style: TextStyle(
                              color: AppTheme.black1,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToOfferMeal();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: SvgPicture.asset(
                            "assets/dashboard_icon2.svg",
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "OfferMeal".tr,
                          style: TextStyle(
                              color: AppTheme.black1,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToMealForOthers();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: SvgPicture.asset(
                            "assets/dashboard_icon3.svg",
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "MealForOthers".tr,
                          style: TextStyle(
                              color: AppTheme.black1,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
