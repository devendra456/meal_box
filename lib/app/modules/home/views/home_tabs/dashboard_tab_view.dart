import 'package:meal_box/imports.dart';

class DashboardTabView extends GetView<DashboardTabController> {
  const DashboardTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 24,
        ),
        Images.imageAssets(
          imagePath: Assets.introImage3,
          width: MediaQuery.of(context).size.width * .7,
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.9,
            ),
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              InkWell(
                onTap: () {
                  controller.goToMyMealPlan();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: Images.svgImageViewAsset(
                            imagePath: Assets.dashboardIcon1,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          StringKeys.myMealPlan.tr,
                          style: TextStyle(color: AppTheme.black1, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToOfferMeal();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: Images.svgImageViewAsset(imagePath: Assets.dashboardIcon2),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          StringKeys.offerMeal.tr,
                          style: TextStyle(color: AppTheme.black1, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToMealForOthers();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.shadowColor7,
                      ),
                      BoxShadow(
                        color: AppTheme.white,
                        spreadRadius: -4.0,
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          child: Images.svgImageViewAsset(
                            imagePath: Assets.dashboardIcon3,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          StringKeys.mealForOthers.tr,
                          style: TextStyle(color: AppTheme.black1, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
