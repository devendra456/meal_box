import 'package:meal_box/imports.dart';

class AddUserController extends GetxController {
  void openSchoolDialog() {
    Get.dialog(const SchoolDialogView());
  }

  void register() {
    Get.dialog(DoneDialogView(StringKeys.done.tr, StringKeys.newUserRegisteredSuccessfully.tr));
  }
}
