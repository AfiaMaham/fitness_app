import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/select_goal_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:gofit_fitness_and_workout_app/widgets/list_scroll.dart';
import 'package:sizer/sizer.dart';
class SelectHeightScreen extends StatelessWidget {
  const SelectHeightScreen({super.key});

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
            "What Is Your Height?",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: Text(
              "Weight in cm.Don't worry. You can always change it later",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          ListScroll(index:500,initial:175).paddingSymmetric(vertical:2.h),
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
                            builder: (context) => SelectGoalScreen()));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
