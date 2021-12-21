import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';

class DoneDialogView extends GetView {
  final String title;
  final String subTitle;
  const DoneDialogView(this.title, this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/done_image.png",
              height: Get.height * 0.12,
            ),
            Text(
              title,
              style: TextStyle(
                color: AppTheme.black1,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 40),
              child: Text(
                subTitle,
                style: TextStyle(
                  color: AppTheme.black3,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 36,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppTheme.accentColor1, AppTheme.accentColor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                boxShadow: [
                  BoxShadow(
                      color: AppTheme.black3,
                      offset: const Offset(0.5, 0.5),
                      blurRadius: 1,
                      spreadRadius: 0.5)
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              child: MaterialButton(
                onPressed: () {
                  Get.back();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "OK".tr,
                ),
                textColor: AppTheme.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
