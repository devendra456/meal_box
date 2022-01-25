import 'package:meal_box/imports.dart';

class MyQRCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyQRCodeController>(
      () => MyQRCodeController(),
    );
  }
}
