import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commans/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/my_q_r_code_controller.dart';

class MyQRCodeView extends GetView<MyQRCodeController> {
  const MyQRCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: "MyQRCode".tr,
        actionButton: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/share_icon.svg",
            height: 20,
            width: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.scanQRCode();
        },
        icon: Icon(
          Icons.qr_code_scanner_rounded,
          color: AppTheme.white,
        ),
        backgroundColor: AppTheme.accentColor1,
        label: Text(
          "ScanQRCode".tr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppTheme.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              child: Material(
                child: ClipRRect(
                  child: CommonWidgets.imageView(),
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Devendra Maurya",
              style: TextStyle(
                color: AppTheme.black1,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 32),
              child: Text(
                "#STU1123",
                style: TextStyle(
                  color: AppTheme.black3,
                ),
              ),
            ),
            Container(
              width: Get.size.width * 0.7,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.black3, width: 0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: QrImage(
                data: '#STU1123',
                version: 1,
                gapless: false,
                errorStateBuilder: (cxt, err) {
                  return Center(
                    child: Text(
                      "somethingWentWrong".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppTheme.black1,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
