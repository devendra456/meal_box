
import 'package:meal_box/imports.dart';

class LanguageChooseView extends GetView {
  const LanguageChooseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () {
                onTapEnglish();
              },
              title: Text(
                StaticStrings.english,
                style: TextStyle(color: AppTheme.black1),
              ),
              leading: CircleAvatar(
                child: Text(
                  StaticStrings.englishCode,
                  style: TextStyle(
                      color: AppTheme.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: AppTheme.accentColor1,
              ),
            ),
            ListTile(
              onTap: () {
                onTapArabic();
              },
              title: const Text(StaticStrings.arabic,),
              leading: CircleAvatar(
                child: Text(
                  StaticStrings.arabicCode,
                  style: TextStyle(
                      color: AppTheme.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: AppTheme.accentColor1,
              ),
            )
          ],
        ),
      ),
    );
  }

  void onTapEnglish() {
    Locale updatedLocale = const Locale('en', 'US');
    MyStorage().insert(MyStorage.appLocale, 'en');
    Get.updateLocale(updatedLocale);
    Get.back();
  }

  void onTapArabic() {
    Locale updatedLocale = const Locale('ar', 'SA');
    MyStorage().insert(MyStorage.appLocale, 'ar');
    Get.updateLocale(updatedLocale);
    Get.back();
  }
}
