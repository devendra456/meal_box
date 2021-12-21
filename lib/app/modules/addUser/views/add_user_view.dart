import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/register/views/field_spacing_view.dart';
import 'package:meal_box/commons/common_widgets.dart';
import 'package:meal_box/configs/app_theme.dart';

import '../controllers/add_user_controller.dart';

class AddUserView extends GetView<AddUserController> {
  const AddUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appHeader(title: "Meals For Others"),
      body: Scaffold(
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                child: SvgPicture.asset("assets/foreground.svg"),
                top: 48,
                right: -104,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Material(
                        elevation: 1,
                        color: Colors.white,
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "FullName".tr,
                            hintStyle:
                                TextStyle(fontSize: 14, color: AppTheme.black3),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 24),
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
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "PhoneNumber".tr,
                            hintStyle:
                                TextStyle(fontSize: 14, color: AppTheme.black3),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 24),
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
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          height: 48,
                          child: Row(
                            children: [
                              Text(
                                "ChooseCity".tr,
                                style: TextStyle(
                                    fontSize: 14, color: AppTheme.black3),
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
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          height: 48,
                          child: Row(
                            children: [
                              Text(
                                "ChooseRegion".tr,
                                style: TextStyle(
                                    fontSize: 14, color: AppTheme.black3),
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
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          height: 48,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "School/Organization".tr,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 14, color: AppTheme.black3),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    controller.openSchoolDialog();
                                  },
                                  child: Text("Choose".tr))
                            ],
                          ),
                        ),
                      ),
                      const FieldSpacingView(),
                      Material(
                        elevation: 1,
                        color: Colors.white,
                        shape: StadiumBorder(
                            side:
                                BorderSide(color: AppTheme.black1, width: 0.1)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          height: 48,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "UNIQUE_ID".tr,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 14, color: AppTheme.black3),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    //controller.openSchoolDialog();
                                  },
                                  child: Text("GenerateID".tr))
                            ],
                          ),
                        ),
                      ),
                      const FieldSpacingView(),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Material(
                          shape: const StadiumBorder(),
                          elevation: 4,
                          child: Container(
                            height: 48,
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              shape: const StadiumBorder(),
                              gradient: LinearGradient(
                                  colors: [
                                    AppTheme.accentColor1,
                                    AppTheme.accentColor2
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: MaterialButton(
                              shape: const StadiumBorder(),
                              onPressed: () {
                                controller.register();
                              },
                              child: Text(
                                "Register".tr,
                                style: TextStyle(
                                    color: AppTheme.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
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
