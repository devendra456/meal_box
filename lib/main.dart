import 'imports.dart';

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
      locale: Locale(kAppLocal),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: const MaterialColor(
            AppTheme.primaryColor,
            AppTheme.primaryMap,
          ),
          fontFamily: "SF_PRO",
          appBarTheme: const AppBarTheme(color: AppTheme.white),
          splashColor: AppTheme.splashColor),
    ),
  );
}
