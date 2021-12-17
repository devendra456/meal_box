import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingTabView extends GetView {
  const SettingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'SettingTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
