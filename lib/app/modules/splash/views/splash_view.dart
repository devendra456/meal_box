import 'package:meal_box/imports.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: kLinearGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12,
                  top: 8,
                  bottom: 8,
                ),
                child: Images.svgImageViewAsset(
                  height: 72,
                  width: 80,
                ),
              ),
              color: AppTheme.white,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              StringKeys.appName.tr.toUpperCase(),
              style: TextStyle(
                color: AppTheme.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              StringKeys.dailyFreshDelivery.tr,
              style: TextStyle(
                color: AppTheme.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
