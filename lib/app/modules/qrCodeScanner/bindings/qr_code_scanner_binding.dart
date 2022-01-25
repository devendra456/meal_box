import 'package:meal_box/imports.dart';

class QrCodeScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrCodeScannerController>(
      () => QrCodeScannerController(),
    );
  }
}
