import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
                width: double.infinity,
              ),
              SizedBox(
                height: Get.height * .24,
                child: SvgPicture.asset("assets/login_screen_image.svg"),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Welcome".tr,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: AppTheme.black1),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "PleaseLoginToYourMealApp".tr,
                style: TextStyle(color: AppTheme.black1),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 16, bottom: 8),
                child: Material(
                  elevation: 1.5,
                  color: Colors.white,
                  shape: StadiumBorder(
                      side: BorderSide(color: AppTheme.black1, width: 0.1)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 24, minHeight: 24),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 24.0, right: 12),
                          child: SvgPicture.asset("assets/user_icon.svg"),
                        ),
                        hintText: "Email".tr,
                        hintStyle:
                            TextStyle(fontSize: 14, color: AppTheme.black3)),
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: true,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
                child: Material(
                  elevation: 1.5,
                  color: Colors.white,
                  shape: StadiumBorder(
                      side: BorderSide(color: AppTheme.black1, width: 0.1)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 24.0, right: 12),
                          child: SvgPicture.asset("assets/lock_icon.svg"),
                        ),
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 24, maxHeight: 24),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: SvgPicture.asset("assets/eye_icon.svg"),
                          ),
                        ),
                        hintText: "Password".tr,
                        hintStyle:
                            TextStyle(color: AppTheme.black3, fontSize: 14)),
                    obscureText: true,
                    enableSuggestions: true,
                    autocorrect: true,
                    autofillHints: const [AutofillHints.password],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32, top: 4),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: TextButton(
                        onPressed: () {
                          controller.goToLoginWithOTP();
                        },
                        child: Text(
                          "LoginWithOTP".tr,
                          style: TextStyle(
                              color: AppTheme.black1,
                              fontSize: 12,
                              fontWeight: FontWeight.w100),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const StadiumBorder()),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 30,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "ForgetPassword".tr,
                          style: TextStyle(
                              color: AppTheme.black1,
                              fontSize: 12,
                              fontWeight: FontWeight.w100),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                const StadiumBorder())),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32, top: 32),
                child: Material(
                  elevation: 4,
                  shape: const StadiumBorder(),
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
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        controller.goToHomePage();
                      },
                      shape: const StadiumBorder(),
                      child: Text(
                        "LOGIN".tr,
                        style: TextStyle(
                            color: AppTheme.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "NotHaveAccountYet".tr,
                    style: TextStyle(fontSize: 14, color: AppTheme.black1),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.goToRegisterScreen();
                    },
                    child: Text("Register".tr),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 48.0, right: 48, top: 16, bottom: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Or".tr,
                        style: TextStyle(fontSize: 12, color: AppTheme.black4),
                      ),
                    ),
                    const Expanded(child: Divider())
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 32.0, right: 32, bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      child: SvgPicture.asset(
                        "assets/facebook_icon.svg",
                        height: 40,
                      ),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 44, 90, 152),
                      shape: const CircleBorder(),
                      height: 48,
                      minWidth: 48,
                      padding: const EdgeInsets.all(0),
                    ),
                    MaterialButton(
                      child: SvgPicture.asset(
                        "assets/google_icon.svg",
                        height: 44,
                      ),
                      onPressed: () {},
                      color: AppTheme.white,
                      shape: const CircleBorder(),
                      height: 48,
                      minWidth: 48,
                      padding: const EdgeInsets.all(0),
                    ),
                    MaterialButton(
                      child: SvgPicture.asset(
                        "assets/twitter_icon.svg",
                        height: 36,
                      ),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 0, 174, 239),
                      shape: const CircleBorder(),
                      height: 48,
                      minWidth: 48,
                      padding: const EdgeInsets.all(0),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
