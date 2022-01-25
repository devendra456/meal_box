import 'imports.dart';

final kAppLocal = MyStorage().get(MyStorage.appLocale) ?? 'en';
final kIsAppRTL = kAppLocal == 'ar' ? true : false;
final kLinearGradient = LinearGradient(
  colors: [
    AppTheme.accentColor1,
    AppTheme.accentColor2,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
