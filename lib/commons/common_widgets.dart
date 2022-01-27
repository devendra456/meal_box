import 'package:meal_box/imports.dart';

class CommonWidgets {

  static Widget gradientTextButton({
    required VoidCallback onPressed,
    String buttonText = "Button",
    double height = 48,
    double width = double.infinity,
    double elevation = 4,
    TextStyle textStyle = const TextStyle(
      color: AppTheme.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    ShapeBorder shapeBorder = const StadiumBorder(),
  }) {
    return Material(
      elevation: elevation,
      shape: shapeBorder,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          shape: shapeBorder,
          gradient: kLinearGradient,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          shape: shapeBorder,
          child: Text(
            buttonText,
            style: textStyle,
          ),
        ),
      ),
    );
  }

  static AppBar appHeader({
    required final String title,
    final Widget actionButton = const SizedBox(),
  }) {
    return AppBar(
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Card(
          elevation: 2.0,
          margin: EdgeInsets.only(
            left: !kIsAppRTL ? 16 : 8,
            right: !kIsAppRTL ? 8 : 16,
            bottom: 12,
            top: 12,
          ),
          child: const Icon(
            Icons.chevron_left,
            color: AppTheme.black1,
            size: 28,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(color: AppTheme.black1, fontSize: 18, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      actions: [actionButton],
    );
  }
}
