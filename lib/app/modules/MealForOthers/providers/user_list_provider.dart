import 'package:meal_box/imports.dart';

class UserListProvider extends GetConnect {
  Future<UserListModel> getUsersList() async {
    final response = await rootBundle.loadString(Assets.userListJSON);
    return UserListModel.fromJson(jsonDecode(response));
  }
}
