import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/workout_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/widgets/home_workout_levels.dart';
import 'package:gofit_fitness_and_workout_app/widgets/menu_icon.dart';
import 'package:sizer/sizer.dart';

class WorkoutLevels extends StatelessWidget {
  WorkoutController controller = Get.put(WorkoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        title: Text(
          "Workout Levels",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 17.sp),
        ),
      ),
      body: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Column(
            children: [
              Container(
                height: 4.h,
                child: TabBar(
                    labelColor: AppColors.whiteColor,
                    indicator: BoxDecoration(
                        color: AppColors.deepPurple,
                        borderRadius: BorderRadius.circular(15.sp),
                        border: Border.all(color: AppColors.deepPurple)),
                    unselectedLabelColor: AppColors.deepPurple,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: AppColors.whiteColor,
                    tabs: [
                      Tab(
                        child: Text("Beginner"),
                      ),
                      Tab(
                        child: Text("Intermediate"),
                      ),
                      Tab(
                        child: Text("Advanced"),
                      ),
                    ]),
              ).paddingSymmetric(vertical: 1.5.h),
              Container(
                height: 80.5.h,
                child: TabBarView(children: [
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => HomeWorkoutLevels(
                            pic: controller.easyExercises[index],
                            name: controller.exercisesName[index],
                            time: "8",
                            level: "Easy")
                        .paddingSymmetric(vertical: 1.h),
                  ).paddingSymmetric(horizontal: 1.w),
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => HomeWorkoutLevels(
                            pic: controller.interExercises[index],
                            name: controller.exercisesName[index],
                            time: "12",
                            level: "intermediate")
                        .paddingSymmetric(vertical: 1.h),
                  ).paddingSymmetric(horizontal: 1.w),
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => HomeWorkoutLevels(
                            pic: controller.advanceExercises[index],
                            name: controller.exercisesName[index],
                            time: "20",
                            level: "Advanced")
                        .paddingSymmetric(vertical: 1.h),
                  ).paddingSymmetric(horizontal: 1.w),
                ]),
              ).paddingSymmetric(horizontal: 2.w),
            ],
          )).paddingSymmetric(horizontal: 2.w),
    );
  }
}
