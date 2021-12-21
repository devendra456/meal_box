import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';
import 'package:meal_box/dialogs/done_dialog_view.dart';

class SendMoneyBottomSheetView extends GetView {
  const SendMoneyBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Your Wallet Amount",
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.black1,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "SAR 300.25",
              style: TextStyle(
                color: AppTheme.green,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Align(
              child: Text(
                "Enter Amount",
                style: TextStyle(
                  color: AppTheme.black1,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  border: Border.all(
                    color: AppTheme.black3,
                    style: BorderStyle.solid,
                    width: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.black3,
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: const Offset(0.5, 0.5),
                    )
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "SAR",
                      style: TextStyle(
                        color: AppTheme.black1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: AppTheme.black1,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SvgPicture.asset(
                      "assets/money_icon.svg",
                      height: 16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            InkWell(
              onTap: () {
                //Get.back();
                Get.dialog(
                  const DoneDialogView(
                      "You are great!",
                      "Money Has Been "
                          "Sent To Your Selected User Account"),
                );
              },
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppTheme.white,
                    border: Border.all(
                      color: AppTheme.black3,
                      style: BorderStyle.solid,
                      width: 0.4,
                    ),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.black3,
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: const Offset(0.5, 0.5),
                      )
                    ]),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.accentColor1,
                            AppTheme.accentColor2,
                          ],
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.white,
                            ),
                          ),
                          Text(
                            "SAR 200.00",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppTheme.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/money_icon.svg",
                      height: 16,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Send Now",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTheme.black1,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
