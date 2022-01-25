import 'package:meal_box/imports.dart';

class ProfileController extends GetxController {
  void changeSchoolName() {
    Get.dialog(const SchoolDialogView());
  }
}
