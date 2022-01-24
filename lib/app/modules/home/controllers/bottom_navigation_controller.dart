import 'package:meal_box/imports.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  HomeController homeController = Get.find<HomeController>();

  void onTapItem(int value) {
    selectedIndex.value = value;
    homeController.changePage(value);
  }
}
