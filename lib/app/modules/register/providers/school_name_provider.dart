import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/models/school_name_model.dart';

class SchoolNameProvider extends GetConnect {
  Future<SchoolNameModel> getSchoolName() async {
    final response = await rootBundle.loadString("jsons/schools_name.json");
    final json = jsonDecode(response);
    return SchoolNameModel.fromJson(json);
  }
}
