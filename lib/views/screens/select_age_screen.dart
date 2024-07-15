import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/select_weight_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:gofit_fitness_and_workout_app/widgets/list_scroll.dart';
import 'package:sizer/sizer.dart';

class SelectAgeScreen extends StatelessWidget {

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      automaticallyImplyLeading: false,
    ),
    body: Column(
      children: [
        Text(
          "How Old Are You?",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "poppins regular"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
          child: Text(
            "Age in years. This will help us to personalize an exercise program plan that suits you.",
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        ),

         ListScroll(index: 150,initial: 32,).paddingSymmetric(vertical: 1.5.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ContainerButton(
                text: "Back",
                width: 43.w,
                onButtonTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ContainerButton(
                text: "Continue",
                width: 43.w,
                onButtonTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectWeightScreen()));
                },
              ),
            )
          ],
        ),
      ],
    ),
  );
}}




