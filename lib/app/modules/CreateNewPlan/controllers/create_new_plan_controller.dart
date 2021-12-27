import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/school_dialog_view.dart';

class CreateNewPlanController extends GetxController {
  var selectedRadio = 0.obs;
  var viewPagerController = PageController(initialPage: 0);
  var selectedMonth = null.obs;

  final List<String> listOfMonth = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  final List<String> listOfDays = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];

  DateTime selectedDate = DateTime.now();
  int currentSelectedDateIndex = 0;

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

  void onChange(String value) {
    //selectedMonth.value = value.toString();
  }
}
