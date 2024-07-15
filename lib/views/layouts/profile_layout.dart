import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/edit_profile_screen.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/notification_setting_screen.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/premium_screen.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/security_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/menu_icon.dart';
import 'package:sizer/sizer.dart';

class ProfileLayout extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                "Profile",
                style: TextStyle(
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ).paddingSymmetric(horizontal: 5.w),
              MenuIcon().paddingOnly(left: 45.w)
            ],
          ).paddingOnly(top: 7.h),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.grayLight,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: AppColors.grayShade,
                  size: 100.sp,
                ),
              ).paddingOnly(top: 4.h),
              Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                  color: AppColors.deepPurple,
                  borderRadius: BorderRadius.circular(7.sp),
                ),
                child: Icon(
                  Icons.edit,
                  color: AppColors.whiteColor,
                  size: 17.sp,
                ),
              ).paddingOnly(top: 16.4.h, left: 23.w),
            ],
          ),
          Text(
            "Christina Ainsley",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.sp),
          ).paddingSymmetric(vertical: 1.h),
          Text(
            "christina_ainsley@yourdomain.com",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PremiumScreen()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.deepPurple,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.5.w, vertical: 0.5.h),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "PRO",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "Upgrade to Premium",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ).paddingSymmetric(horizontal: 3.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.w, vertical: 0.5.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.whiteColor),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.sp,
                        ),
                      ).paddingOnly(left: 11.w),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                  Text(
                    "Enjoy workout without ads and restrictions",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 9.sp),
                  ).paddingOnly(top: 1.h, right: 20.w),
                ],
              ),
            ).paddingSymmetric(vertical: 2.h),
          ),
          Divider(
            thickness: 0.2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  size: 23.sp,
                  color: AppColors.blackColor.withOpacity(0.5),
                ),
                Text(
                  "Edit Profile",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 5.w)
              ],
            ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationSettingScreen()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.notifications_none,
                  size: 23.sp,
                  color: AppColors.blackColor.withOpacity(0.5),
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 5.w)
              ],
            ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecurityScreen()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.security,
                  size: 23.sp,
                  color: AppColors.blackColor.withOpacity(0.5),
                ),
                Text(
                  "Security",
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ).paddingSymmetric(horizontal: 5.w)
              ],
            ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
          ),
          Row(
            children: [
              Icon(
                Icons.help_center_outlined,
                size: 23.sp,
                color: AppColors.blackColor.withOpacity(0.5),
              ),
              Text(
                "Help",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
              ).paddingSymmetric(horizontal: 5.w)
            ],
          ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
          Row(
            children: [
              Icon(
                Icons.visibility_outlined,
                size: 23.sp,
                color: AppColors.blackColor.withOpacity(0.5),
              ),
              Text(
                "Dark Theme",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
              ).paddingSymmetric(horizontal: 5.w),
              SizedBox(
                width: 13.w,
                height: 4.5.h,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child:Obx((){
                    return Switch(
                      value: controller.darkTheme.value,
                      onChanged: (value) {
                        controller.darkTheme.value=value!;
                      },
                    );

                  }),
                ),
              ).paddingOnly(left: 30.w),
            ],
          ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
          Row(
            children: [
              Icon(
                Icons.logout_outlined,
                size: 23.sp,
                color: Colors.red,
              ),
              Text(
                "Logout",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.red),
              ).paddingSymmetric(horizontal: 5.w)
            ],
          ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
        ],
      ).paddingSymmetric(horizontal: 5.w),
    );
  }
}
