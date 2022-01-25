import 'package:meal_box/imports.dart';

class MealForOthersController extends GetxController with StateMixin<UserListModel> {
  @override
  void onInit() {
    getUsersList();
    super.onInit();
  }

  void goToCreateUser() {
    Get.toNamed(Routes.addUser);
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

  void removeUser(UserData data) {
    Get.dialog(UserRemoveDialogView(data));
  }

  void viewHistory() {
    Get.toNamed(Routes.history);
  }
}
