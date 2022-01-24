import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/commons/images.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/send_money_controller.dart';

class SendMoneyView extends GetView<SendMoneyController> {
  const SendMoneyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: "Send Money"),
      floatingActionButton: Container(
        height: 48,
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          gradient: LinearGradient(
            colors: [
              AppTheme.accentColor1,
              AppTheme.accentColor2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                text: TextSpan(
                  text: "Total Amount",
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 12,
                  ),
                  children: [
                    const TextSpan(text: ": "),
                    TextSpan(
                      text: "SAR 200",
                      style: TextStyle(
                        color: AppTheme.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: VerticalDivider(
                color: AppTheme.white,
                width: 1,
                thickness: 1,
              ),
            ),
            MaterialButton(
              onPressed: () {
                controller.openPaymentDialog();
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: 48,
              child: const Text("SEND NOW"),
              textColor: AppTheme.white,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Stack(
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
                            child: Images.networkImageView(),
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
                              Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Text(
                                      "Devendra Maurya",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: AppTheme.black1,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 36,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "S.V.M. Inter Collage Sagra Sunder "
                                "Pratapgarh",
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
                                      text: "#JKG875",
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
                                            text: "Pratapgarh",
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
                                            text: "India",
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
              ],
            ),
          );
        },
        itemCount: 1,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      ),
    );
  }
}
