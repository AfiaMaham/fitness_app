import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/Controller/workout_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/notification_screen.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/workout_levels.dart';
import 'package:gofit_fitness_and_workout_app/widgets/home_workout_levels.dart';
import 'package:sizer/sizer.dart';

class HomeLayout extends StatelessWidget {
  WorkoutController controller = Get.put(WorkoutController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              SizedBox(
                height: 3.5.h,
                width: 8.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/images/dumb-bell_icon.png",
                  ),
                ),
              ),
              Text(
                "Gofit",
                style: TextStyle(
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ).paddingSymmetric(horizontal: 5.w),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                  },
                  child: Icon(Icons.notifications_none,color: AppColors.blackColor.withOpacity(0.6),size: 23.sp,).paddingOnly(left: 45.w)),
            ],
          ).paddingSymmetric(horizontal: 5.w,vertical: 2.h),
          Text("Morning, Christina👋",style: TextStyle(
              fontFamily: "poppins regular",
              fontSize: 22.sp,
              fontWeight: FontWeight.bold
          ),).paddingOnly(top: 0.5.h,left: 5.w),
            Text("Featured Workout",style: TextStyle(
                fontFamily: "poppins regular",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600
            ),).paddingSymmetric(horizontal: 5.w,vertical: 1.5.h),
          Container(
            height: 33.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index)=>Stack(children: [
                ClipRRect(
                    borderRadius:BorderRadius.circular(30.sp),
                    child: Image.asset(controller.featuresPics[index])).paddingOnly(left: 1.w),
                Text(controller.featuresName[index],style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.whiteColor
                ),).paddingOnly(top: 23.h,left: 3.w)
              ],),
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Workout Levels",style: TextStyle(
                    fontFamily: "poppins regular",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutLevels()));
                  },
                  child: Text("See All",style: TextStyle(
                      fontFamily: "poppins regular",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.deepPurple
                  ),),
                ),

              ],).paddingSymmetric(horizontal: 5.w,vertical: 1.5.h),
            DefaultTabController(
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
                    ).paddingSymmetric(vertical: 1.h),
                    Container(
                      height: 21.h,
                      child: TabBarView(children: [
                        HomeWorkoutLevels(pic:"assets/images/easy_pic1.png",name:"Squat Movement Exercise",time:"8",level:"Easy"),
                        HomeWorkoutLevels(pic:"assets/images/inter_pic1.jpg",name:"Squat Movement Exercise",time:"12",level:"intermediate"),
                        HomeWorkoutLevels(pic:"assets/images/advance_pic1.jpg",name:"Squat Movement Exercise",time:"20",level:"Advanced"),
                      ]),
                    ).paddingSymmetric(horizontal: 2.w),
                  ],
                )).paddingSymmetric(horizontal: 2.w),
        ],),
      
      ),
    );
  }
}
