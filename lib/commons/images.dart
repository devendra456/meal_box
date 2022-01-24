import 'package:meal_box/imports.dart';

class Images {
  static Widget networkImageView({
    double height = double.infinity,
    double width = double.infinity,
    String imageUrl = Assets.dummyImageURL,
    BoxFit boxFit = BoxFit.cover,
  }) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: AppTheme.black3,
      ),
      fit: boxFit,
    );
  }

  static Widget svgImageViewAsset({
    double? height,
    double? width,
    String imagePath = Assets.appLogo,
    BoxFit boxFit = BoxFit.cover,
    Color? color,
  }) {
    return SvgPicture.asset(
      imagePath,
      width: width,
      height: height,
      fit: boxFit,
      color: color,
    );
  }

  static Widget imageAssets({
    double? height,
    double? width,
    String imagePath = Assets.appLogo,
    BoxFit boxFit = BoxFit.cover,
  }) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: boxFit,
    );
  }
}
