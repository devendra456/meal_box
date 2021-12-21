import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: "History".tr),
      body: controller.obx((data) {
        if (data!.data.isNotEmpty) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: data.data[index].isPlanActive
                            ? AppTheme.green
                            : AppTheme.red,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        data.data[index].isPlanActive
                            ? "CurrentPlan".tr
                            : "PlanExpired".tr,
                        style: TextStyle(
                          color: AppTheme.white,
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 115,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.data[index].restaurantName,
                                      style: TextStyle(
                                        color: AppTheme.accentColor1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      data.data[index].menus.join(", "),
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontSize: 12,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      color: AppTheme.lightBlue,
                                      child: Text(
                                        data.data[index].validity,
                                        style: TextStyle(
                                            color: AppTheme.black1,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        maxLines: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      data.data[index].mealType,
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 7,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: const StadiumBorder(),
                                      color: AppTheme.lightAccent1,
                                    ),
                                    child: Text(
                                      "ViewDetails".tr,
                                      style: TextStyle(
                                        color: AppTheme.black1,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      elevation: 2,
                      borderOnForeground: true,
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
            child: Text(
              "HistoryNotFound".tr,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: AppTheme.black1,
              ),
            ),
          );
        }
      }),
    );
  }
}
