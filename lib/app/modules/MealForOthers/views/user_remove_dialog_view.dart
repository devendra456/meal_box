import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/MealForOthers/models/user_list_model.dart';
import 'package:meal_box/commans/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

class UserRemoveDialogView extends GetView {
  final Datum data;

  const UserRemoveDialogView(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      child: ClipRRect(
                        child: CommonWidgets.imageView(),
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
                          Text(
                            data.userName,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.black1,
                              fontSize: 14,
                            ),
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            data.schoolName,
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
                              text: "RegistrationID".tr + ": ",
                              style: TextStyle(
                                color: AppTheme.black1,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                  text: data.registrationId,
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
                                    text: "City".tr + ": ",
                                    style: TextStyle(
                                      color: AppTheme.black1,
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: data.city,
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
                                    text: "Region".tr + ": ",
                                    style: TextStyle(
                                      color: AppTheme.black1,
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: data.region,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 16,
              ),
              child: Text(
                "AreYouSureWantToRemoveThisUser?".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.black1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "NO".tr + ", " + "Cancel".tr,
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
                      controller.goToCreateUser();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      "YES".tr + ", " + "Remove".tr,
                    ),
                    textColor: AppTheme.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
