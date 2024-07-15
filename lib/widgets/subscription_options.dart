import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class SubscriptionOption extends StatelessWidget {
  final String duration;
  final String price;
  final int index;
  SubscriptionOption({required this.duration, required this.price,required this.index});

  final SelectionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.whiteColor, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.whiteColor),
      child: Row(
        children: [
          Obx(() {
            return Radio(
                value: index,
                groupValue: controller.radioButton.value,
                onChanged: (value) {
                  controller.radioButton.value = value!;
                });
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    duration,
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    price,
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                "Pay once, cancel anytime",
                style: TextStyle(fontSize: 9.sp, color: AppColors.grayShade),
              )
            ],
          ),
        ],
      ),
    );
  }
}
