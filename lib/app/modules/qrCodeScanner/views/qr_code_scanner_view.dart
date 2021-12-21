import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/utils/my_storage.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../controllers/qr_code_scanner_controller.dart';

class QrCodeScannerView extends GetView<QrCodeScannerController> {
  const QrCodeScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [AppTheme.accentColor1, AppTheme.accentColor2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () async {
            await controller.controller!.toggleFlash();
            controller.isTorchOn.value = !controller.isTorchOn.value;
          },
          child: Obx(
            () => controller.isTorchOn.value
                ? Image.asset("assets/torch_off_icon.png")
                : Image.asset("assets/torch_on_icon.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          QRView(
            key: controller.qrKey,
            cameraFacing: CameraFacing.back,
            formatsAllowed: const [BarcodeFormat.qrcode],
            overlay: QrScannerOverlayShape(
              overlayColor: const Color.fromARGB(184, 0, 0, 0),
              borderRadius: 8,
              borderColor: AppTheme.accentColor1,
              borderWidth: 4,
              cutOutBottomOffset: 40,
            ),
            onQRViewCreated: (qrController) {
              controller.controller = qrController;
              controller.controller!.scannedDataStream.listen((event) {
                controller.barcode = event;
                CommonWidgets.showSuccessMessage(event.code.toString());
              });
            },
          ),
          Positioned(
            left: MyStorage().get(MyStorage.appLocale) == "en" ? 8 : null,
            right: MyStorage().get(MyStorage.appLocale) == "en" ? null : 8,
            top: 8,
            child: SafeArea(
              child: CloseButton(
                color: AppTheme.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Get.size.height * 0.12,
            child: SafeArea(
              child: Text(
                "Scan QR Code",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
