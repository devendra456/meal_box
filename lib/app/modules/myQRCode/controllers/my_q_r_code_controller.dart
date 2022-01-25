import 'package:meal_box/imports.dart';

class MyQRCodeController extends GetxController {
  void scanQRCode() {
    Get.toNamed(Routes.qrCodeScanner);
  }
}
