import 'package:meal_box/imports.dart';
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
              StringKeys.yourWalletAmount.tr,
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.black1,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              StaticStrings.amount,
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
                StringKeys.enterAmount.tr,
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
                      StaticStrings.currency,
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
                    child: /*SvgPicture.asset(
                      "assets/money_icon.svg",
                      height: 16,
                    ),*/Images.svgImageViewAsset(imagePath: Assets.moneyIcon,height: 16,boxFit: BoxFit.contain,),
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
                      StaticStrings.paymentDone,
                      StaticStrings.paymentDone1),
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
                            StringKeys.totalAmount,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.white,
                            ),
                          ),
                          Text(
                            StaticStrings.amount,
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
                   /* SvgPicture.asset(
                      "assets/money_icon.svg",
                      height: 16,
                    ),*/
                    Images.svgImageViewAsset(imagePath: Assets.moneyIcon,height: 16,boxFit: BoxFit.contain,),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      StringKeys.sendNow,
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
