import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/school_dialog_view.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  openSchoolDialog() {
    Get.dialog(const SchoolDialogView());
  }

  void gotoLoginScreen() {
    Get.toNamed(Routes.login);
  }
}
