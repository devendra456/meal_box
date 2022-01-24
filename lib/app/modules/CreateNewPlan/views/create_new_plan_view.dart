import 'package:meal_box/imports.dart';

class CreateNewPlanView extends GetView<CreateNewPlanController> {
  const CreateNewPlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: StringKeys.createNewPlan.tr),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Images.svgImageViewAsset(
                  height: 32,
                  width: 32,
                  imagePath: Assets.schoolImage,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      StaticStrings.createNewSchoolName,
                      maxLines: 2,
                      style: TextStyle(color: AppTheme.black2, fontSize: 14),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.changeSchoolName();
                  },
                  child: Text(StringKeys.change.tr),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppTheme.black3, width: 0.4),
              borderRadius: BorderRadius.circular(4),
              color: AppTheme.white,
              boxShadow: [
                BoxShadow(
                  color: AppTheme.black4,
                  spreadRadius: 0.5,
                  blurRadius: 2,
                ),
                BoxShadow(
                  color: AppTheme.white,
                )
              ],
            ),
          ),
          Obx(
            () => Row(
              children: [
                Radio(
                  value: controller.selectedRadio.value,
                  groupValue: 0,
                  onChanged: (value) {
                    controller.onRadioChange(0);
                  },
                ),
                Text(
                  StringKeys.dailyPlan.tr,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black1,
                  ),
                ),
                Radio(
                  value: controller.selectedRadio.value,
                  groupValue: 1,
                  onChanged: (value) {
                    controller.onRadioChange(1);
                  },
                ),
                Text(
                  StringKeys.weeklyPlan.tr,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              children: const [
                DailyPlanView(),
                WeeklyPlanView(),
              ],
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                controller.selectedRadio.value = index;
              },
              controller: controller.viewPagerController,
            ),
          ),
        ],
      ),
    );
  }
}
