
import 'package:meal_box/imports.dart';
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
