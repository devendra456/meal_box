import 'package:meal_box/imports.dart';

class AppDrawerView extends GetView<AppDrawerController> {
  const AppDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ClipOval(
                      child: Images.networkImageView(height: 64, width: 64),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StaticStrings.name,
                            style: TextStyle(color: AppTheme.black1, fontSize: 18, fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            StaticStrings.schoolName,
                            style: TextStyle(color: AppTheme.black3, fontSize: 14, fontWeight: FontWeight.w300),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    const CloseButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 16, right: 16),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: controller.langCode == 'en' ? controller.unselectedBoxDecoration : controller.selectedBoxDecoration,
                      child: Center(
                        child: Text(
                          StaticStrings.arabicCode,
                          style: TextStyle(
                            color: controller.langCode == 'en' ? AppTheme.black1 : AppTheme.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      onPressed: () {
                        controller.changeLanguage();
                      },
                      icon: Images.svgImageViewAsset(
                        imagePath: Assets.arrowIcon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: controller.langCode == 'ar' ? controller.unselectedBoxDecoration : controller.selectedBoxDecoration,
                      child: Center(
                        child: Text(
                          StaticStrings.englishCode,
                          style: TextStyle(
                            color: controller.langCode == 'en' ? AppTheme.white : AppTheme.black1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(1);
                },
                leading: Images.svgImageViewAsset(
                  imagePath: Assets.profileIcon,
                  width: 20,
                  height: 20,
                ),
                title: Text(
                  StringKeys.profile.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(2);
                },
                leading: Images.svgImageViewAsset(
                  imagePath: Assets.changePasswordIcon,
                  width: 20,
                  height: 20,
                ),
                title: Text(
                  StringKeys.changePassword.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(3);
                },
                leading: Images.svgImageViewAsset(
                  imagePath: Assets.myQRCodeIcon,
                  width: 20,
                  height: 20,
                ),
                title: Text(
                  StringKeys.myQRCode.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapDrawerListItem(4);
                },
                leading: Images.svgImageViewAsset(
                  imagePath: Assets.historyIcon,
                  width: 20,
                  height: 20,
                ),
                title: Text(
                  StringKeys.history.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                onTap: () {
                  controller.onTapLogout();
                },
                leading: Images.svgImageViewAsset(
                  imagePath: Assets.logoutIcon,
                  width: 20,
                  height: 20,
                ),
                title: Text(
                  StringKeys.logout.tr,
                  style: TextStyle(color: AppTheme.black1, fontSize: 16),
                ),
                horizontalTitleGap: 0,
                dense: true,
              ),
              const Divider(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
