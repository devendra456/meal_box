import 'package:meal_box/imports.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: PageView(
                children: [
                  IntroContentView(imagePath: Assets.introImage1, content: StringKeys.introScreenContent1.tr, totalPage: 4, currentPage: 1),
                  IntroContentView(imagePath: Assets.introImage2, content: StringKeys.introScreenContent2.tr, totalPage: 4, currentPage: 2),
                  IntroContentView(imagePath: Assets.introImage3, content: StringKeys.introScreenContent3.tr, totalPage: 4, currentPage: 3),
                  IntroContentView(imagePath: Assets.introImage4, content: StringKeys.introScreenContent4.tr, totalPage: 4, currentPage: 4),
                ],
                physics: const BouncingScrollPhysics(),
                controller: controller.pageController,
              ),
              flex: 4,
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 120,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: kLinearGradient,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        controller.changePage();
                      },
                      shape: const StadiumBorder(),
                      child: Text(
                        StringKeys.next.tr,
                        style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    child: Text(
                      StringKeys.skip.tr,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
