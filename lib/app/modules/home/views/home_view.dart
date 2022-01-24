import 'package:meal_box/imports.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationView(),
      endDrawer: const AppDrawerView(),
      key: controller.scaffoldState,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: MyStorage().get(MyStorage.appLocale) == "en" ? 24 : 8, right: MyStorage().get(MyStorage.appLocale) == "en" ? 8 : 24),
              height: 64,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringKeys.welcome.tr,
                        style: TextStyle(color: AppTheme.accentColor1, fontSize: 16),
                      ),
                      Text(
                        StaticStrings.name,
                        style: TextStyle(color: AppTheme.black1, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      controller.openDrawer();
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Images.svgImageViewAsset(
                          imagePath: Assets.hamburgerIcon,
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller.pageController,
                children: controller.screens,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
