import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_meal_controller.dart';

class OfferMealView extends GetView<OfferMealController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferMealView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferMealView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
