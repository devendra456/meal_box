import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/intro/views/intro_content_view.dart';
import 'package:meal_box/app/routes/app_pages.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: PageView(
                children: [
                  IntroContentView(
                      imagePath: "assets/intro_image1.png",
                      content: "introScreenContent1".tr,
                      totalPage: 4,
                      currentPage: 1),
                  IntroContentView(
                      imagePath: "assets/intro_image2.png",
                      content: "introScreenContent2".tr,
                      totalPage: 4,
                      currentPage: 2),
                  IntroContentView(
                      imagePath: "assets/intro_image3.png",
                      content: "introScreenContent3".tr,
                      totalPage: 4,
                      currentPage: 3),
                  IntroContentView(
                      imagePath: "assets/intro_image4.png",
                      content: "introScreenContent4".tr,
                      totalPage: 4,
                      currentPage: 4)
                ],
                physics: const BouncingScrollPhysics(),
                controller: controller.pageController,
              ),
              flex: 4,
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 120,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(
                          colors: [
                            AppTheme.accentColor1,
                            AppTheme.accentColor2
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        controller.changePage();
                      },
                      shape: const StadiumBorder(),
                      child: Text(
                        "NEXT".tr,
                        style: TextStyle(
                            color: AppTheme.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    child: Text(
                      "SKIP".tr,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
