import 'package:meal_box/imports.dart';

class CreateNewPlanController extends GetxController {
  var selectedRadio = 0.obs;
  var viewPagerController = PageController(initialPage: 0);
  var selectedMonth = null.obs;
  var currentDate = DateTime.now().toIso8601String().split("T").first;

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

  final List<String> bannerImageList = [
    Assets.capture7,
    Assets.capture8,
    Assets.capture9,
    Assets.capture7,
    Assets.capture8,
    Assets.capture9,
  ];

  final List<String> menuList = [
    "Veg Sandwich",
    "Chicken Sandwich",
    "Panner Rolls",
    "Chicken Biryani",
    "Dumplings",
    "Chicken Burger",
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
