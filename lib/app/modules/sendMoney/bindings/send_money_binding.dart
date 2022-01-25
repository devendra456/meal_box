import 'package:meal_box/imports.dart';

class SendMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SendMoneyController(),
    );
  }
}
