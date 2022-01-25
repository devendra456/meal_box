import 'package:meal_box/imports.dart';

class SchoolNameProvider extends GetConnect {
  Future<SchoolNameModel> getSchoolName() async {
    final response = await rootBundle.loadString(Assets.schoolsNameJSON);
    final json = jsonDecode(response);
    return SchoolNameModel.fromJson(json);
  }
}
