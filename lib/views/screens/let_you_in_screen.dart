import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/signin_screen.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/signup_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class LetYouInScreen extends StatelessWidget {
  const LetYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
      ),
      body: Column(
        children:[
         Expanded(
          child: Column(
            children: [
              Text(
                "Let's you in",
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins regular"),
              ).paddingOnly(top: 6.h),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(color: AppColors.grayShade),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/facebook_icon.png",
                        scale: 0.55,
                      ).paddingSymmetric(horizontal: 3.w),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppins regular",
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 5.w),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(color: AppColors.grayShade),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google_icon.png",
                        scale: 1.2,
                      ).paddingSymmetric(horizontal: 3.w),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppins regular",
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 5.w),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(color: AppColors.grayShade),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/mac_icon.png",
                        scale: 0.63,
                      ).paddingSymmetric(horizontal: 3.w),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppins regular",
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 5.w),
              ),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2,indent: 6.w,endIndent: 3.w,)),
                  Text(
                    "or",
                    style: TextStyle(
                        color: AppColors.grayShade,
                        fontSize: 11.sp,
                        fontFamily: "poppins regular",
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(child: Divider(thickness: 2,indent: 3.w,endIndent: 6.w,color: AppColors.grayShade,)),
                ],
              ).paddingSymmetric(vertical: 6.h),
              ContainerButton(
                text: 'Sign in with password',
                onButtonTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                },
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    color: AppColors.grayShade,
                    fontSize: 11.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));

                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: AppColors.deepPurple,
                      fontSize: 11.sp,
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.w600),
                ).paddingSymmetric(horizontal: 2.w),
              ),
            ],
          ),
        ).paddingSymmetric(vertical: 5.h),
],
      ),
    );
  }
}
