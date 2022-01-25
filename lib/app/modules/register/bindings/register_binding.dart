import 'package:meal_box/imports.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.put(SchoolNameController());
  }
}
