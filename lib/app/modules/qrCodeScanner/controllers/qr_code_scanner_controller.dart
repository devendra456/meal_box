
import 'package:meal_box/imports.dart';
class QrCodeScannerController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  Barcode? barcode;
  QRViewController? controller;
  RxBool isTorchOn = false.obs;

  @override
  void onClose() {
    controller!.dispose();
  }
}
