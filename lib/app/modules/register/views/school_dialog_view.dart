import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/controllers/school_name_controller.dart';
import 'package:meal_box/configs/app_theme.dart';

class SchoolDialogView extends GetView<SchoolNameController> {
  const SchoolDialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Material(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "SearchSchools/Organization".tr,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.black1),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "SearchSchools/Organization".tr,
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide:
                                BorderSide(color: AppTheme.accentColor1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: AppTheme.black3)),
                        hintStyle:
                            TextStyle(color: AppTheme.black3, fontSize: 14)),
                  ),
                ),
                SizedBox(
                  height: Get.size.height * .4,
                  child: controller.obx(
                    (data) => ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 8),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text(
                                data!.data[index].schoolName.toString(),
                                style: TextStyle(color: AppTheme.black2),
                              ),
                            ),
                            const Divider()
                          ],
                        );
                      },
                      itemCount: data!.data.length,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(
                        "assets/search_icon.svg",
                        height: 24,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "NotFound".tr,
                        style: TextStyle(
                          color: AppTheme.black2,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            controller.openAddNewRequestDialog();
                          },
                          child: Text("AddRequestHere".tr))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
