import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerifyController extends GetxController {
  late TextEditingController pinCodeController;
  late StreamController<ErrorAnimationType> errorController;

  @override
  void onInit() {
    pinCodeController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>();
    super.onInit();
  }

  void goToHomePage() {}
}
