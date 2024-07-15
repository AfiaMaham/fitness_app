import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/widgets/menu_icon.dart';
import 'package:gofit_fitness_and_workout_app/widgets/notification_widget.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
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
          "Notification",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today",style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600
          ),).paddingOnly(left: 4.w),
          NotificationWidget(
            icon: Icons.check_box,
            iconColor: AppColors.whiteColor,
            containerColor: Colors.green,
            headingText: "Congratulations!",
            dataText: "You have been exercising for 2 hours",
          ),
          NotificationWidget(
            icon:Icons.add_circle,
            iconColor: AppColors.whiteColor,
            containerColor: Colors.blue,
            headingText: "New Workout is Available!",
            dataText: "Check now and practice",
          ),
          Text("Yesterday",style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600
          ),).paddingOnly(left: 4.w),
          NotificationWidget(
            icon:Icons.alarm,
            iconColor: AppColors.whiteColor,
            containerColor: Colors.deepOrange,
            headingText: "New Features are Available",
            dataText: "You can now set exercise reminder",
          ),
          Text("December 11, 2024",style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600
          ),).paddingOnly(left: 4.w),
          NotificationWidget(
            icon: Icons.check_box,
            iconColor: AppColors.whiteColor,
            containerColor: Colors.green,
            headingText: "Verification Successful",
            dataText: "Account verification complete",
          ),
        ],
      ),
    );
  }
}
