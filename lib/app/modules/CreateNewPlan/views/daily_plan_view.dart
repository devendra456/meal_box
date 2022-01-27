import 'package:meal_box/imports.dart';

class DailyPlanView extends GetView<CreateNewPlanController> {
  const DailyPlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            controller.currentDate,
            style: kHeading1,
          ),
        ),
        SizedBox(
          height: 48,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Images.imageAssets(
                  imagePath: controller.bannerImageList[index],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 16,
              );
            },
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            itemCount: controller.bannerImageList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return _buildRestaurantCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: 10,
            padding: const EdgeInsets.all(8),
            physics: const BouncingScrollPhysics(),
          ),
        )
      ],
    );
  }

  Widget _buildRestaurantCard() {
    return SizedBox(
      height: 208,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 16,
            child: Images.svgImageViewAsset(
              imagePath: Assets.offerStripBottom,
              boxFit: BoxFit.contain,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppTheme.white,
              border: Border.all(color: AppTheme.black3, width: 0.5),
            ),
            margin: const EdgeInsets.only(
              top: 9.5,
              left: 8,
              right: 8,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Images.imageAssets(
                          imagePath: Assets.dummyFood,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "Cabrio Restuarants",
                              style: kHeadingStyle,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            child: Row(
                              children: [
                                Images.svgImageViewAsset(imagePath: Assets.star, height: 12, width: 12),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "4.5",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          right: 12,
                          top: 4,
                        ),
                        child: Text(
                          controller.menuList.join(", "),
                          style: kNormalTextStyle,
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "SAR 400",
                              style: kGreenPriceTextStyle,
                            ),
                          ),
                          const Spacer(),
                          CommonWidgets.gradientTextButton(
                            onPressed: () {},
                            width: 128,
                            height: 32,
                            buttonText: "Create Menu",
                            shapeBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: kIsAppRTL ? const Radius.circular(0) : const Radius.circular(8),
                                topRight: kIsAppRTL ? const Radius.circular(8) : const Radius.circular(0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppTheme.white.withAlpha(168),
                      child: Images.svgImageViewAsset(
                        imagePath: Assets.likeOutlined,
                        height: 12,
                        width: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Stack(
              children: [
                Images.svgImageViewAsset(
                  imagePath: Assets.offerStripTop,
                  boxFit: BoxFit.contain,
                ),
                Positioned(
                  left: 0,
                  right:0,
                  top:0,
                  bottom: 0,
                  child: Text(
                    "20% OFF",
                    style: TextStyle(
                      color: AppTheme.black1,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
