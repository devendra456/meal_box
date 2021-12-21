import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/CreateNewPlan/views/daily_plan_view.dart';
import 'package:meal_box/app/modules/CreateNewPlan/views/weekly_plan_view.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/create_new_plan_controller.dart';

class CreateNewPlanView extends GetView<CreateNewPlanController> {
  const CreateNewPlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: "CreateNewPlan".tr),
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
                SvgPicture.asset(
                  "assets/school_image.svg",
                  height: 32,
                  width: 32,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Al Danah International School.",
                      maxLines: 2,
                      style: TextStyle(color: AppTheme.black2, fontSize: 14),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.changeSchoolName();
                  },
                  child: Text("Change".tr),
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
                ]),
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
                  "DailyPlan".tr,
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
                  "WeeklyPlan".tr,
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
