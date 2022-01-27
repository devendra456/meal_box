import 'imports.dart';

final kAppLocal = MyStorage().get(MyStorage.appLocale) ?? 'en';
final bool kIsAppRTL = kAppLocal == 'ar' ? true : false;
const kLinearGradient = LinearGradient(
  colors: [
    AppTheme.accentColor1,
    AppTheme.accentColor2,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const TextStyle kHeading1 = TextStyle(
  color: AppTheme.black1,
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

const kGreenPriceTextStyle = TextStyle(
  color: AppTheme.green,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

const kHeadingStyle = TextStyle(
  color: AppTheme.black1,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

const kNormalTextStyle = TextStyle(
  color: AppTheme.black2,
  fontSize: 14,
);
