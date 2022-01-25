import 'package:meal_box/imports.dart';

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
