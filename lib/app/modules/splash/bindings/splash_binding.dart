
import 'package:meal_box/imports.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController());
    Get.put(SplashController());
  }
}
