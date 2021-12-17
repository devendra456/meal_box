import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/configs/app_theme.dart';

class IntroContentView extends GetView {
  final String imagePath;
  final String content;
  final int totalPage;
  final int currentPage;

  const IntroContentView(
      {required this.imagePath,
      required this.content,
      required this.totalPage,
      required this.currentPage,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(imagePath),
            alignment: Alignment.center,
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "Step".tr,
                  children: [
                    TextSpan(text: currentPage.toString()),
                    TextSpan(text: "of".tr),
                    TextSpan(text: totalPage.toString()),
                  ],
                  style: TextStyle(
                      color: AppTheme.black1,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppTheme.black1, height: 1.6),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
