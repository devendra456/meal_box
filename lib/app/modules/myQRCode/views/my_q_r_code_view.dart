import 'package:meal_box/imports.dart';

class MyQRCodeView extends GetView<MyQRCodeController> {
  const MyQRCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(
        title: StringKeys.myQRCode.tr,
        actionButton: IconButton(
          onPressed: () {},
          icon: Images.svgImageViewAsset(
            imagePath: Assets.shareIcon,
            boxFit: BoxFit.contain,
            width: 20,
            height: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.scanQRCode();
        },
        icon: Icon(
          Icons.qr_code_scanner_rounded,
          color: AppTheme.white,
        ),
        backgroundColor: AppTheme.accentColor1,
        label: Text(
          StringKeys.scanQRCode.tr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppTheme.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              child: Material(
                child: ClipRRect(
                  child: Images.networkImageView(),
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              StaticStrings.name,
              style: TextStyle(
                color: AppTheme.black1,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 32),
              child: Text(
                StaticStrings.uniqueID,
                style: TextStyle(
                  color: AppTheme.black3,
                ),
              ),
            ),
            Container(
              width: Get.size.width * 0.7,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.black3, width: 0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: QrImage(
                data: StaticStrings.uniqueID,
                version: 1,
                gapless: false,
                errorStateBuilder: (cxt, err) {
                  return Center(
                    child: Text(
                      StringKeys.somethingWentWrong.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppTheme.black1,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
