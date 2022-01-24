import 'package:meal_box/imports.dart';

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
      pageController.animateToPage((pageController.page!.toInt() + 1), duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  void showLanguageChooseDialog() {
    Get.dialog(const LanguageChooseView());
  }
}
