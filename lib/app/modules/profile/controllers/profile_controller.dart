import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/school_dialog_view.dart';

class ProfileController extends GetxController {
  void changeSchoolName() {
    Get.dialog(const SchoolDialogView());
  }
}
