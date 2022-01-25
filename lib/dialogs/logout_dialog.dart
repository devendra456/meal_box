import 'package:meal_box/imports.dart';
class LogoutDialog extends GetView {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.error_outline_outlined,
                  color: AppTheme.black1,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  StringKeys.areYouSure.tr,
                  style: TextStyle(
                    color: AppTheme.black1,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    StringKeys.no.tr,
                    style: TextStyle(
                      color: AppTheme.black3,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                    Get.back();
                    MyStorage().insert(MyStorage.isUserLogin, false);
                    Get.offNamed(Routes.login);
                  },
                  child: Text(StringKeys.yes.tr),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
