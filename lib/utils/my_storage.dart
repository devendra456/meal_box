
import 'package:meal_box/imports.dart';

class MyStorage {
  static final MyStorage _myStorage = MyStorage._internal();
  GetStorage? storage;
  factory MyStorage() {
    _myStorage.storage ??= GetStorage();
    return _myStorage;
  }
  MyStorage._internal();

  static String isUserFirstTime = "isUserFirstTime";
  static String isUserLogin = "isUserLogin";
  static String appLocale = "appLocale";

  insert(String key, dynamic value) async {
    await storage!.write(key, value);
  }

  delete(String key) async {
    await storage!.remove(key);
  }

  dynamic get(String key) {
    return storage!.read(key);
  }
}
