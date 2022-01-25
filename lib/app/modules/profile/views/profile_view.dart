import 'package:meal_box/imports.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: StringKeys.profile.tr),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Stack(
                  children: [
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
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 24,
                        width: 24,
                        padding: const EdgeInsets.all(6),
                        child: /*SvgPicture.asset(
                          "assets/edit_icon.svg",
                        ),*/
                            Images.svgImageViewAsset(imagePath: Assets.editIcon, boxFit: BoxFit.contain),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppTheme.black3,
                            width: 0.4,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.5,
                              blurRadius: 2,
                              color: AppTheme.black3,
                            ),
                            BoxShadow(
                              color: AppTheme.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
              Material(
                elevation: 1,
                color: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: StringKeys.fullName.tr,
                    hintStyle: TextStyle(fontSize: 14, color: AppTheme.black3),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  keyboardType: TextInputType.name,
                  autocorrect: true,
                  textInputAction: TextInputAction.next,
                  enableSuggestions: true,
                  autofillHints: const [AutofillHints.name],
                ),
              ),
              const FieldSpacingView(),
              Material(
                elevation: 1,
                color: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: StringKeys.phoneNumber.tr,
                    hintStyle: TextStyle(fontSize: 14, color: AppTheme.black3),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  keyboardType: TextInputType.phone,
                  autocorrect: true,
                  enableSuggestions: true,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.telephoneNumber],
                ),
              ),
              const FieldSpacingView(),
              Material(
                elevation: 1,
                color: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  height: 48,
                  child: Row(
                    children: [
                      Text(
                        StringKeys.chooseCity.tr,
                        style: TextStyle(fontSize: 14, color: AppTheme.black3),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppTheme.black3,
                      )
                    ],
                  ),
                ),
              ),
              const FieldSpacingView(),
              Material(
                elevation: 1,
                color: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  height: 48,
                  child: Row(
                    children: [
                      Text(
                        StringKeys.chooseRegion.tr,
                        style: TextStyle(fontSize: 14, color: AppTheme.black3),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppTheme.black3,
                      )
                    ],
                  ),
                ),
              ),
              const FieldSpacingView(),
              Material(
                elevation: 1,
                color: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: AppTheme.black1, width: 0.1)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  height: 48,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          StringKeys.schoolOrganization.tr,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: AppTheme.black3),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          controller.changeSchoolName();
                        },
                        child: Text(StringKeys.change.tr),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Material(
                  shape: const StadiumBorder(),
                  elevation: 4,
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                    child: MaterialButton(
                      shape: const StadiumBorder(),
                      onPressed: () {},
                      child: Text(
                        StringKeys.saveAndChange.tr,
                        style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
