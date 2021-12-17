import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/intro/views/language_choose_view.dart';
import 'package:meal_box/app/routes/app_pages.dart';
import 'package:meal_box/utils/my_storage.dart';

class IntroController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  @override
  void onInit() {
    MyStorage().insert(MyStorage.isUserFirstTime, true);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    showLanguageChooseDialog();
  }

  void changePage() {
    if (pageController.page! > 2) {
      Get.toNamed(Routes.login);
    } else {
      pageController.animateToPage((pageController.page!.toInt() + 1),
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  void showLanguageChooseDialog() {
    Get.dialog(const LanguageChooseView());
  }
}
