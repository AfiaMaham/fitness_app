import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/Controller/workout_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/workout_activity.dart';
import 'package:sizer/sizer.dart';
class HomeWorkoutLevels extends StatelessWidget {
  String? name;
  String? time;
  String? level;
  String? pic;
  HomeWorkoutLevels({
    required this.name,
    required this.time,
    required this.level,
    required this.pic,
});
  SelectionController controller = Get.put(SelectionController());
  WorkoutController workoutController = Get.put(WorkoutController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        workoutController.selectedWorkoutName.value = name!;
        workoutController.selectedWorkoutLevel.value = level!;
        workoutController.selectedWorkoutTime.value=time!;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutActivity()));
      },
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25.sp),
          child: Image.asset(pic!),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name!,style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600
            ),),
            Row(children: [
              Text("$time"+" minutes",style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400
              ),),
              VerticalDivider(),
              Text(level!,style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400
              ),),


            ],),
          ],).paddingSymmetric(horizontal: 6.w,vertical: 1.5.h),
      ],),
    );
  }
}
