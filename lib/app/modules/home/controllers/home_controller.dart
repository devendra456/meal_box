import 'package:meal_box/imports.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  final PageController pageController = PageController(initialPage: 0);
  final screens = const [
    DashboardTabView(),
    NotificationTabView(),
    WalletTabView(),
    SettingTabView(),
  ];

  void openDrawer() {
    scaffoldState.currentState!.openEndDrawer();
  }

  void changePage(int value) {
    pageController.animateToPage(value, duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }
}
