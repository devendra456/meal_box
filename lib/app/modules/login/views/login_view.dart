import 'package:meal_box/imports.dart';

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
                child: Images.svgImageViewAsset(
                  imagePath: Assets.loginScreenImage,
                  boxFit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                StringKeys.welcome_.tr,
                style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 24, color: AppTheme.black1),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                StringKeys.pleaseLoginToYourMealApp.tr,
                style: const TextStyle(color: AppTheme.black1),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 8),
                child: Material(
                  elevation: 1.5,
                  color: Colors.white,
                  shape: const StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIconConstraints: const BoxConstraints(minWidth: 24, minHeight: 24),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 24.0, right: 12),
                          child: Images.svgImageViewAsset(
                            imagePath: Assets.userIcon,
                            boxFit: BoxFit.contain,
                          ),
                        ),
                        hintText: StringKeys.email.tr,
                        hintStyle: const TextStyle(fontSize: 14, color: AppTheme.black3)),
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
                  shape: const StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 24.0, right: 12),
                          child: Images.svgImageViewAsset(
                            imagePath: Assets.lockIcon,
                            boxFit: BoxFit.contain,
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(minWidth: 24, maxHeight: 24),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Images.svgImageViewAsset(
                              imagePath: Assets.eyeIcon,
                              boxFit: BoxFit.contain,
                            ),
                          ),
                        ),
                        hintText: StringKeys.password.tr,
                        hintStyle: const TextStyle(color: AppTheme.black3, fontSize: 14)),
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
                          StringKeys.loginWithOTP.tr,
                          style: const TextStyle(color: AppTheme.black1, fontSize: 12, fontWeight: FontWeight.w100),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(const StadiumBorder()),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 30,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          StringKeys.forgetPassword.tr,
                          style: const TextStyle(color: AppTheme.black1, fontSize: 12, fontWeight: FontWeight.w100),
                        ),
                        style: ButtonStyle(shape: MaterialStateProperty.all(const StadiumBorder())),
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
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        controller.goToHomePage();
                      },
                      shape: const StadiumBorder(),
                      child: Text(
                        StringKeys.login.tr,
                        style: const TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringKeys.notHaveAccountYet.tr,
                    style: const TextStyle(fontSize: 14, color: AppTheme.black1),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.goToRegisterScreen();
                    },
                    child: Text(StringKeys.register.tr),
                    style: ButtonStyle(shape: MaterialStateProperty.all(const StadiumBorder())),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 48, top: 16, bottom: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        StringKeys.or.tr,
                        style: const TextStyle(fontSize: 12, color: AppTheme.black4),
                      ),
                    ),
                    const Expanded(child: Divider())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32, bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      child: Images.svgImageViewAsset(
                        imagePath: Assets.facebookIcon,
                        height: 40,
                        boxFit: BoxFit.contain,
                      ),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 44, 90, 152),
                      shape: const CircleBorder(),
                      height: 48,
                      minWidth: 48,
                      padding: const EdgeInsets.all(0),
                    ),
                    MaterialButton(
                      child: Images.svgImageViewAsset(
                        imagePath: Assets.googleIcon,
                        boxFit: BoxFit.contain,
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
                      child: Images.svgImageViewAsset(
                        imagePath: Assets.twitterIcon,
                        boxFit: BoxFit.contain,
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
