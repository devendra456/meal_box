import 'package:meal_box/imports.dart';
class RegisterController extends GetxController {
  openSchoolDialog() {
    Get.dialog(const SchoolDialogView());
  }

  void gotoLoginScreen() {
    Get.toNamed(Routes.login);
  }
}
