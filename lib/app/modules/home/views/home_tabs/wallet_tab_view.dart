import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletTabView extends GetView {
  const WalletTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'WalletTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
