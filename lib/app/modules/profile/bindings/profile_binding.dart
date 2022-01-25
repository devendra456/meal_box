import 'package:meal_box/imports.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.put(SchoolNameController());
  }
}
