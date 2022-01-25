import 'package:meal_box/imports.dart';

class LoginWithOTPView extends GetView<LoginWithOTPController> {
  const LoginWithOTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 64,
                width: double.infinity,
              ),
              SizedBox(
                height: Get.size.height * 0.15,
                width: Get.size.width * 0.5,
                child: Images.svgImageViewAsset(
                  boxFit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32),
                child: Text(
                  StringKeys.loginWithOTP.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Material(
                      elevation: 1,
                      color: Colors.white,
                      shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: StringKeys.enterYourPhoneNumber.tr,
                          hintStyle: TextStyle(fontSize: 14, color: AppTheme.black4),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                        ),
                        keyboardType: TextInputType.phone,
                        autocorrect: true,
                        enableSuggestions: true,
                        autofillHints: const [AutofillHints.telephoneNumber],
                      ),
                    ),
                    Text(
                      StringKeys.loginWithOTPDisclaimer.tr,
                      style: TextStyle(color: AppTheme.black4, fontSize: 12, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
                child: Material(
                  shape: const StadiumBorder(),
                  elevation: 4,
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                    child: MaterialButton(
                      shape: const StadiumBorder(),
                      onPressed: () {
                        controller.goToOTPVerify();
                      },
                      child: Text(
                        StringKeys.getOTP.tr,
                        style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
