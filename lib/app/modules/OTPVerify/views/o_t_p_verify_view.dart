import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/o_t_p_verify_controller.dart';

class OTPVerifyView extends GetView<OTPVerifyController> {
  const OTPVerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
                width: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                child: SvgPicture.asset(
                  "assets/verify_otp_image.svg",
                  height: MediaQuery.of(context).size.height * .3,
                ),
              ),
              Text(
                "OTPVerification".tr,
                style: TextStyle(
                  color: AppTheme.black1,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "EnterTheOTPSentTo".tr,
                    style: TextStyle(
                      color: AppTheme.black3,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "+917897430432",
                    style: TextStyle(
                      color: AppTheme.black3,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SizedBox(
                  height: 48,
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(4),
                      fieldHeight: 48,
                      fieldWidth: 48,
                      activeFillColor: Colors.white,
                      selectedColor: AppTheme.black1,
                      activeColor: AppTheme.black3,
                      inactiveColor: AppTheme.black3,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    errorAnimationController: controller.errorController,
                    controller: controller.pinCodeController,
                    appContext: context,
                    onChanged: (String value) {},
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don'tReceiveTheOTP".tr,
                    style: TextStyle(color: AppTheme.black1),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "ResendOTP".tr,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(
                          colors: [
                            AppTheme.accentColor1,
                            AppTheme.accentColor2
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shadows: [
                        BoxShadow(
                            color: AppTheme.black3,
                            offset: const Offset(0.7, 0.7),
                            blurRadius: 2,
                            spreadRadius: 0.5)
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      controller.goToHomePage();
                    },
                    shape: const StadiumBorder(),
                    child: Text(
                      "VERIFY&LOGIN".tr,
                      style: TextStyle(
                          color: AppTheme.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
