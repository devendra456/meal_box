import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/MealForOthers/models/user_list_model.dart';

class UserListProvider extends GetConnect {
  Future<UserListModel> getUsersList() async {
    final response = await rootBundle.loadString("jsons/userList.json");
    return UserListModel.fromJson(jsonDecode(response));
  }
}
