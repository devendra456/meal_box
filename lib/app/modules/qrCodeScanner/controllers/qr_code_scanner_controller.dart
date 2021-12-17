import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

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
