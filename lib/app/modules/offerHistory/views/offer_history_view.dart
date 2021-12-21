import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/offer_history_controller.dart';

class OfferHistoryView extends GetView<OfferHistoryController> {
  const OfferHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: "Offer History"),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: AppTheme.black3,
                style: BorderStyle.solid,
                width: 0.4,
              ),
            ),
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Single Offer Meal",
                        style: TextStyle(
                          color: AppTheme.accentColor1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(
                        "assets/single_icon.svg",
                        height: 12,
                      ),
                      const Spacer(),
                      Text(
                        "12/12/2002",
                        style: TextStyle(
                          color: AppTheme.black2,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  RichText(
                    maxLines: 1,
                    softWrap: false,
                    text: TextSpan(
                      text: "User".tr + ": ",
                      style: TextStyle(
                        color: AppTheme.black1,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: "Abdullah",
                          style: TextStyle(
                            color: AppTheme.black2,
                          ),
                          spellOut: false,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        maxLines: 1,
                        softWrap: false,
                        text: TextSpan(
                          text: "Unique ID" + ": ",
                          style: TextStyle(
                            color: AppTheme.black1,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "#JHDK32",
                              style: TextStyle(
                                color: AppTheme.black2,
                              ),
                              spellOut: false,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            "Sent Amount",
                            style: TextStyle(
                              color: AppTheme.black1,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "SAR 200",
                            style: TextStyle(
                              color: AppTheme.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
