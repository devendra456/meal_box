import 'package:get/get.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class MyQRCodeController extends GetxController {
  void scanQRCode() {
    Get.toNamed(Routes.QR_CODE_SCANNER);
  }
}
