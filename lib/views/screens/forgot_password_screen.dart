import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/enter_code_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        title: Text(
          "Forgot Password",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/forgot_password.png",
            scale: 0.75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Select which contact details should we use to reset your password",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.5.h),
                    decoration: BoxDecoration(
                        color: AppColors.lightPurple, shape: BoxShape.circle),
                    child: Icon(
                      Icons.message,
                      color: AppColors.deepPurple,
                      size: 22.sp,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "via SMS",
                        style: TextStyle(
                            color: AppColors.grayShade, fontSize: 11.sp),
                      ).paddingOnly(right: 16.w),
                      Text(
                        "+1 111 ******99",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 5.w),
                ],
              ).paddingSymmetric(horizontal: 5.w),
            ).paddingOnly(top: 1.h),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.5.h),
                    decoration: BoxDecoration(
                        color: AppColors.lightPurple, shape: BoxShape.circle),
                    child: Icon(
                      Icons.email,
                      color: AppColors.deepPurple,
                      size: 22.sp,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "via Email",
                        style: TextStyle(
                            color: AppColors.grayShade, fontSize: 11.sp),
                      ).paddingOnly(right: 35.w),
                      Text(
                        "and***ey@yourdomain.com",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 5.w),
                ],
              ).paddingSymmetric(horizontal: 5.w),
            ).paddingOnly(top: 2.h),
          ),
          ContainerButton(
            text: "Continue",
            width: 90.w,
            onButtonTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EnterCodeScreen()));
            },
          ).paddingOnly(top: 4.h),
        ],
      ),
    );
  }
}
