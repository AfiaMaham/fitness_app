import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/activity_controller.dart';
import 'package:gofit_fitness_and_workout_app/Controller/workout_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/get_ready_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class WorkoutActivity extends StatelessWidget {
  ActivityController controller = Get.put(ActivityController());
  WorkoutController workoutController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx((){
          return   Text(
            workoutController.selectedWorkoutName.value,
            style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 19.sp,
            ),
          );
        }),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.3.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.sp),
                  border: Border.all(color: AppColors.deepPurple,width: 1.5)
                ),
                child:Obx((){
                  return  Text(workoutController.selectedWorkoutLevel.value,style: TextStyle(
                      color: AppColors.deepPurple,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp
                  ),);
                }),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.sp),
                    border: Border.all(color: AppColors.deepPurple,width: 1.5)
                ),
                child: Obx((){
                  return Text("${workoutController.selectedWorkoutTime.value} minutes",style: TextStyle(
                      color: AppColors.deepPurple,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp
                  ),);
                }),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.sp),
                    border: Border.all(color: AppColors.deepPurple,width: 1.5)
                ),
                child: Text("10 workout",style: TextStyle(
                    color: AppColors.deepPurple,
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp
                ),),

              ),
            ],
          ),
          Text("Featured Workout",style: TextStyle(
              fontFamily: "poppins regular",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600
          ),).paddingSymmetric(horizontal: 3.w,vertical: 1.h),
          Container(
            height: 69.h,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)=>Card(
                child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Row(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15.sp),bottomLeft: Radius.circular(15.sp)),
                      child: Image.asset(controller.activityImages[index],scale: 9,)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(controller.activityName[index],style: TextStyle(
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),),
                    Text("${controller.activityPeriod[index]} seconds",style: TextStyle(
                        fontFamily: "poppins regular",
                        fontSize: 12.sp,
                        color: AppColors.grayShade
                    ),),
                  ],).paddingOnly(left: 6.w),
                ],),
                            ).paddingSymmetric(vertical: 0.7.h),
              ),
            ),
          ),
          Divider().paddingSymmetric(vertical: 1.h),
          ContainerButton(text: "Start",onButtonTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GetReadyScreen()));
          },).paddingOnly(left: 7.w,bottom: 1.h),
        ],
      ).paddingSymmetric(horizontal: 3.w),
    );
  }
}
