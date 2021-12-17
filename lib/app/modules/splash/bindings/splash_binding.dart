import 'package:get/get.dart';
import 'package:meal_box/utils/network_controller.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController());
    Get.put(SplashController());
  }
}
