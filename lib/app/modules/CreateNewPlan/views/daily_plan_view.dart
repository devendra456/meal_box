import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_box/app/modules/CreateNewPlan/controllers/create_new_plan_controller.dart';

class DailyPlanView extends GetView<CreateNewPlanController> {
  const DailyPlanView({Key? key}) : super(key: key);

  //CreateNewPlanController controller = Get.find<CreateNewPlanController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*DropdownButton(
          items: controller.listOfMonth
              .map(
                (e) => DropdownMenuItem(child: Text(e)),
              )
              .toList(),

        ),*/
        DropdownButton<String>(
          items: controller.listOfMonth.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            controller.onChange(value!);
          },
          value: controller.selectedMonth.value,
          hint: Text("Please select month"),
          underline: SizedBox(),
        ),
        SizedBox(
          height: 88,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 72,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      controller.listOfMonth[
                          DateTime.now().add(Duration(days: index)).month - 1],
                    ),
                    Text(
                      DateTime.now().add(Duration(days: index)).day.toString(),
                    ),
                    Text(
                      controller.listOfDays[
                          DateTime.now().add(Duration(days: index)).weekday -
                              1],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 16,
              );
            },
            itemCount: 365,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
