import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/models/school_name_model.dart';
import 'package:meal_box/app/modules/register/providers/school_name_provider.dart';
import 'package:meal_box/app/modules/register/views/add_new_request_view.dart';

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
