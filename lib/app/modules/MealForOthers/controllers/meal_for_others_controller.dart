import 'package:get/get.dart';
import 'package:meal_box/app/modules/MealForOthers/models/user_list_model.dart';
import 'package:meal_box/app/modules/MealForOthers/providers/user_list_provider.dart';
import 'package:meal_box/app/modules/MealForOthers/views/user_remove_dialog_view.dart';
import 'package:meal_box/app/routes/app_pages.dart';

class MealForOthersController extends GetxController
    with StateMixin<UserListModel> {
  @override
  void onInit() {
    getUsersList();
    super.onInit();
  }

  void goToCreateUser() {
    Get.toNamed(Routes.ADD_USER);
  }

  void getUsersList() {
    UserListProvider().getUsersList().then(
      (value) {
        change(value, status: RxStatus.success());
      },
      onError: (error) {
        change(null, status: RxStatus.error());
      },
    );
  }

  void removeUser(Datum data) {
    Get.dialog(UserRemoveDialogView(data));
  }

  void viewHistory() {
    Get.toNamed(Routes.HISTORY);
  }
}
