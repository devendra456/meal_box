import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/sendMoney/views/send_money_bottomsheet_view.dart';
import 'package:meal_box/configs/app_theme.dart';

class SendMoneyController extends GetxController {
  @override
  void onReady() {
    openPaymentDialog();
    super.onReady();
  }

  void openPaymentDialog() {
    Get.bottomSheet(
      const SendMoneyBottomSheetView(),
      backgroundColor: AppTheme.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
    );
  }
}
