import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meal_box/utils/app_translation.dart';
import 'package:meal_box/utils/my_storage.dart';

import 'app/routes/app_pages.dart';
import 'configs/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    GetMaterialApp(
      title: "Meal Box",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      translations: AppTranslations(),
      locale: Locale(MyStorage().get(MyStorage.appLocale) ?? 'en'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MaterialColor(
            AppTheme.primaryColor,
            AppTheme.primaryMap,
          ),
          fontFamily: "SF_PRO",
          appBarTheme: AppBarTheme(color: AppTheme.white),
          splashColor: AppTheme.splashColor),
    ),
  );
}
