import 'package:meal_box/imports.dart';

class OfferHistoryView extends GetView<OfferHistoryController> {
  const OfferHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: StringKeys.offerHistory.tr),
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
                        StaticStrings.singleOffer,
                        style: TextStyle(
                          color: AppTheme.accentColor1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Images.svgImageViewAsset(
                        imagePath: Assets.singleIcon,
                        height: 12,
                        boxFit: BoxFit.contain,
                      ),
                      const Spacer(),
                      Text(
                        StaticStrings.date,
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
                      text: StringKeys.user.tr + ": ",
                      style: TextStyle(
                        color: AppTheme.black1,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: StaticStrings.name,
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
                          text: StringKeys.uniqueID.tr + ": ",
                          style: TextStyle(
                            color: AppTheme.black1,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: StaticStrings.uniqueID,
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
                            StringKeys.sentAmount.tr,
                            style: TextStyle(
                              color: AppTheme.black1,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            StaticStrings.amount,
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
