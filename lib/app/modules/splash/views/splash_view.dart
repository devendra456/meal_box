import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commans/static_strings.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppTheme.accentColor1, AppTheme.accentColor2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 96,
              width: 104,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12, top: 8, bottom: 8),
                  child: SvgPicture.asset(
                    "assets/app_logo.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                color: AppTheme.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              StaticStrings.appName.toUpperCase(),
              style: TextStyle(
                  color: AppTheme.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text(
              "DailyFreshDelivery".tr,
              style: TextStyle(color: AppTheme.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
