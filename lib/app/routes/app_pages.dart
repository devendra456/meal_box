import 'package:get/get.dart';

import 'package:meal_box/app/modules/CreateNewPlan/bindings/create_new_plan_binding.dart';
import 'package:meal_box/app/modules/CreateNewPlan/views/create_new_plan_view.dart';
import 'package:meal_box/app/modules/LoginWithOTP/bindings/login_with_o_t_p_binding.dart';
import 'package:meal_box/app/modules/LoginWithOTP/views/login_with_o_t_p_view.dart';
import 'package:meal_box/app/modules/MealForOthers/bindings/meal_for_others_binding.dart';
import 'package:meal_box/app/modules/MealForOthers/views/meal_for_others_view.dart';
import 'package:meal_box/app/modules/MyMealPlan/bindings/my_meal_plan_binding.dart';
import 'package:meal_box/app/modules/MyMealPlan/views/my_meal_plan_view.dart';
import 'package:meal_box/app/modules/OTPVerify/bindings/o_t_p_verify_binding.dart';
import 'package:meal_box/app/modules/OTPVerify/views/o_t_p_verify_view.dart';
import 'package:meal_box/app/modules/OfferMeal/bindings/offer_meal_binding.dart';
import 'package:meal_box/app/modules/OfferMeal/views/offer_meal_view.dart';
import 'package:meal_box/app/modules/addUser/bindings/add_user_binding.dart';
import 'package:meal_box/app/modules/addUser/views/add_user_view.dart';
import 'package:meal_box/app/modules/changePassword/bindings/change_password_binding.dart';
import 'package:meal_box/app/modules/changePassword/views/change_password_view.dart';
import 'package:meal_box/app/modules/history/bindings/history_binding.dart';
import 'package:meal_box/app/modules/history/views/history_view.dart';
import 'package:meal_box/app/modules/home/bindings/home_binding.dart';
import 'package:meal_box/app/modules/home/views/home_view.dart';
import 'package:meal_box/app/modules/intro/bindings/intro_binding.dart';
import 'package:meal_box/app/modules/intro/views/intro_view.dart';
import 'package:meal_box/app/modules/login/bindings/login_binding.dart';
import 'package:meal_box/app/modules/login/views/login_view.dart';
import 'package:meal_box/app/modules/myQRCode/bindings/my_q_r_code_binding.dart';
import 'package:meal_box/app/modules/myQRCode/views/my_q_r_code_view.dart';
import 'package:meal_box/app/modules/profile/bindings/profile_binding.dart';
import 'package:meal_box/app/modules/profile/views/profile_view.dart';
import 'package:meal_box/app/modules/qrCodeScanner/bindings/qr_code_scanner_binding.dart';
import 'package:meal_box/app/modules/qrCodeScanner/views/qr_code_scanner_view.dart';
import 'package:meal_box/app/modules/register/bindings/register_binding.dart';
import 'package:meal_box/app/modules/register/views/register_view.dart';
import 'package:meal_box/app/modules/splash/bindings/splash_binding.dart';
import 'package:meal_box/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.intro,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.register,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.loginWithOTP,
      page: () => const LoginWithOTPView(),
      binding: LoginWithOTPBinding(),
    ),
    GetPage(
      name: _Paths.otpVerify,
      page: () => const OTPVerifyView(),
      binding: OTPVerifyBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.myMealPlan,
      page: () => const MyMealPlanView(),
      binding: MyMealPlanBinding(),
    ),
    GetPage(
      name: _Paths.offerMeal,
      page: () => OfferMealView(),
      binding: OfferMealBinding(),
    ),
    GetPage(
      name: _Paths.mealForOthers,
      page: () => MealForOthersView(),
      binding: MealForOthersBinding(),
    ),
    GetPage(
      name: _Paths.createNewPlan,
      page: () => CreateNewPlanView(),
      binding: CreateNewPlanBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.MY_Q_R_CODE,
      page: () => MyQRCodeView(),
      binding: MyQRCodeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.ADD_USER,
      page: () => AddUserView(),
      binding: AddUserBinding(),
    ),
    GetPage(
      name: _Paths.QR_CODE_SCANNER,
      page: () => QrCodeScannerView(),
      binding: QrCodeScannerBinding(),
    ),
  ];
}
