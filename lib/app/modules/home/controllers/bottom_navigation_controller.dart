import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void onTapItem(int value) {
    selectedIndex.value = value;
  }
}
