import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/school_dialog_view.dart';
import 'package:meal_box/dialogs/done_dialog_view.dart';

class AddUserController extends GetxController {
  //TODO: Implement AddUserController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void openSchoolDialog() {
    Get.dialog(const SchoolDialogView());
  }

  void register() {
    Get.dialog(DoneDialogView("Done".tr, "NewUserRegisteredSuccessfully!".tr));
  }
}
