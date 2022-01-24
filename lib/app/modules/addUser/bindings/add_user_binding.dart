import 'package:meal_box/imports.dart';

class AddUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUserController>(
      () => AddUserController(),
    );
    Get.put(SchoolNameController());
  }
}
