import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/school_dialog_view.dart';

class CreateNewPlanController extends GetxController {
  var selectedRadio = 0.obs;

  var viewPagerController = PageController(initialPage: 0);

  void changeSchoolName() {
    Get.dialog(const SchoolDialogView());
  }

  void onRadioChange(int index) {
    selectedRadio.value = index;
    viewPagerController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }
}
