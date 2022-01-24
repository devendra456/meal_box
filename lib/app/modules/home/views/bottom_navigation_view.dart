import 'package:meal_box/imports.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: Obx(
          () => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Images.svgImageViewAsset(
                      imagePath: Assets.homeIcon,
                      height: 22,
                      width: 22,
                      color: controller.selectedIndex.value == 0 ? AppTheme.accentColor1 : AppTheme.black3,
                    ),
                  ),
                  label: StringKeys.dashboard.tr),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Images.svgImageViewAsset(
                      imagePath: Assets.bellIcon,
                      height: 22,
                      width: 22,
                      color: controller.selectedIndex.value == 1 ? AppTheme.accentColor1 : AppTheme.black3,
                    ),
                  ),
                  label: StringKeys.notification.tr),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Images.svgImageViewAsset(
                    imagePath: Assets.walletIcon,
                    height: 22,
                    width: 22,
                    color: controller.selectedIndex.value == 2 ? AppTheme.accentColor1 : AppTheme.black3,
                  ),
                ),
                label: StringKeys.wallet.tr,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Images.svgImageViewAsset(
                    imagePath: Assets.settingIcon,
                    height: 22,
                    width: 22,
                    color: controller.selectedIndex.value == 3 ? AppTheme.accentColor1 : AppTheme.black3,
                  ),
                ),
                label: StringKeys.setting.tr,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: AppTheme.accentColor1,
            onTap: (value) {
              controller.onTapItem(value);
            },
            unselectedItemColor: AppTheme.black3,
            elevation: 20,
          ),
        ),
      ),
    );
  }
}
