
import 'package:meal_box/imports.dart';

class OfferMealProvider extends GetConnect {
  Future<OfferMealModel> getOfferedUsersList() async {
    final response = await rootBundle.loadString(Assets.offerMealJSON);
    return OfferMealModel.fromJson(jsonDecode(response));
  }
}
