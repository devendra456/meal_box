import 'package:meal_box/imports.dart';

class MealForOthersView extends GetView<MealForOthersController> {
  const MealForOthersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: StringKeys.usersList.tr,
        actionButton: addUserButton(),
      ),
      body: controller.obx((data) {
        if (data!.data.isNotEmpty) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Stack(
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: ClipRRect(
                                    child: Images.networkImageView(),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  height: 72,
                                  width: 72,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Text(
                                              data.data[index].userName,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: AppTheme.black1,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 36,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        data.data[index].schoolName,
                                        style: TextStyle(
                                          color: AppTheme.black2,
                                          fontSize: 12,
                                        ),
                                        maxLines: 1,
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      RichText(
                                        maxLines: 1,
                                        softWrap: false,
                                        text: TextSpan(
                                          text: StringKeys.registrationID.tr + ": ",
                                          style: TextStyle(
                                            color: AppTheme.black1,
                                            fontSize: 12,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: data.data[index].registrationId,
                                              style: TextStyle(
                                                color: AppTheme.black2,
                                              ),
                                              spellOut: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: RichText(
                                              maxLines: 1,
                                              softWrap: false,
                                              text: TextSpan(
                                                text: StringKeys.city.tr + ": ",
                                                style: TextStyle(
                                                  color: AppTheme.black1,
                                                  fontSize: 12,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: data.data[index].city,
                                                    style: TextStyle(
                                                      color: AppTheme.black2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: RichText(
                                              maxLines: 1,
                                              softWrap: false,
                                              text: TextSpan(
                                                text: StringKeys.region.tr + ": ",
                                                style: TextStyle(
                                                  color: AppTheme.black1,
                                                  fontSize: 12,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: data.data[index].region,
                                                    style: TextStyle(
                                                      color: AppTheme.black2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 252, 252, 252),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      controller.viewHistory();
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(),
                                      ),
                                    ),
                                    icon: Images.svgImageViewAsset(
                                      imagePath: Assets.historyIcon,
                                      boxFit: BoxFit.contain,
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      StringKeys.viewHistory.tr,
                                      style: const TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 36,
                                  child: TextButton.icon(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(),
                                      ),
                                    ),
                                    icon: Images.svgImageViewAsset(
                                      imagePath: Assets.addIcon,
                                      boxFit: BoxFit.contain,
                                      height: 13,
                                      width: 13,
                                    ),
                                    label: Text(
                                      StringKeys.createNewUser.tr,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 90, 153, 239),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: MyStorage().get(MyStorage.appLocale) == "en" ? null : 12,
                      right: MyStorage().get(MyStorage.appLocale) == "en" ? 12 : null,
                      top: 12,
                      child: InkWell(
                        onTap: () {
                          controller.removeUser(data.data[index]);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Images.svgImageViewAsset(
                              imagePath: Assets.deleteIcon,
                              boxFit: BoxFit.contain,
                              height: 13,
                              width: 13,
                            ),
                            Text(
                              StringKeys.remove.tr,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 239, 15, 23),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: data.data.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Images.svgImageViewAsset(
                  imagePath: Assets.historyIcon,
                  boxFit: BoxFit.contain,
                  width: Get.width * 0.3,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  StringKeys.usersNotFound.tr,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.black2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Get.height * 0.15),
                  width: Get.width * 0.75,
                  height: 40,
                  decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                      shadows: [BoxShadow(color: AppTheme.black3, offset: const Offset(0.5, 0.5), blurRadius: 1, spreadRadius: 0.5)]),
                  child: MaterialButton(
                    onPressed: () {
                      controller.goToCreateUser();
                    },
                    padding: const EdgeInsets.all(0),
                    shape: const StadiumBorder(),
                    child: Text(
                      StringKeys.createNewUser.tr,
                      style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }

  Widget addUserButton() {
    return Container(
      padding: EdgeInsets.only(left: MyStorage().get(MyStorage.appLocale) == "en" ? 4 : 16, right: MyStorage().get(MyStorage.appLocale) == "en" ? 16 : 4, top: 16, bottom: 16),
      child: Container(
        width: 72,
        decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            shadows: [BoxShadow(color: AppTheme.black3, offset: const Offset(0.5, 0.5), blurRadius: 1, spreadRadius: 0.5)]),
        child: MaterialButton(
          onPressed: () {
            controller.goToCreateUser();
          },
          padding: const EdgeInsets.all(0),
          shape: const StadiumBorder(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 12,
                color: AppTheme.white,
              ),
              Text(
                StringKeys.addUser.tr,
                style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 10),
              ),
              const SizedBox(
                width: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
