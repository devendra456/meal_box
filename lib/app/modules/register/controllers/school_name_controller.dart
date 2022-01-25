
import 'package:meal_box/imports.dart';
class SchoolNameController extends GetxController
    with StateMixin<SchoolNameModel> {
  @override
  void onInit() {
    super.onInit();
    getSchoolName();
  }

  openAddNewRequestDialog() {
    Get.dialog(const AddNewRequestView());
  }

  void getSchoolName() {
    SchoolNameProvider().getSchoolName().then(
      (value) {
        change(value, status: RxStatus.success());
      },
      onError: (error) {
        change(
          null,
          status: RxStatus.error(error.toString()),
        );
      },
    );
  }
}
