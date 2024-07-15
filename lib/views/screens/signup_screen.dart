import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/signin_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';
class SignupScreen extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
      ),
      body: Column(
        children: [
          Text(
            "Create your Account",
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins regular"),
          ).paddingSymmetric(horizontal: 10.w, vertical: 5.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 18.0, horizontal: 24),
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.grayShade,
                ).paddingOnly(left: 2.w),
                hintText: "Email",
                hintStyle: TextStyle(
                    color: AppColors.grayShade,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Obx((){
              return TextFormField(
                obscureText: controller.isHidden.value?false:true,
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 18.0, horizontal: 24),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: AppColors.grayShade,
                  ).paddingOnly(left: 2.w),
                  suffixIcon:  GestureDetector(
                      onTap: (){
                        controller.isHidden.value = !controller.isHidden.value;
                      },
                      child: Icon(controller.isHidden.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,color: AppColors.grayShade)
                  ),


                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: AppColors.grayShade,
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.w500),
                  filled: true,
                  fillColor: AppColors.grayLight,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ).paddingOnly(top: 2.5.h);

            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx((){
                return  Checkbox(
                    value: controller.remember.value,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onChanged: (value) {
                      controller.remember.value=value!;
                    });
              }),
              Text(
                "Remember me",
                style: TextStyle(
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
              ),

            ],
          ).paddingSymmetric(vertical: 1.h),
          ContainerButton(text: "Sign up",onButtonTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
          },),

          Row(
            children: [
              Expanded(child: Divider(thickness: 2,indent: 10.w,endIndent: 3.w,)),
              Text(
                "or continue with",
                style: TextStyle(
                    color: AppColors.grayShade2,
                    fontSize: 11.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ),
              Expanded(child: Divider(thickness: 2,indent: 3.w,endIndent: 10.w,)),
            ],
          ).paddingOnly(top: 8.h),
          Row(

            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 5.5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: AppColors.grayShade),
                ),
                child: Center(child: Image.asset("assets/images/facebook_icon.png", scale: 0.73,),),
              ).paddingOnly(right: 4.w),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 5.5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: AppColors.grayShade),
                ),
                child: Center(child: Image.asset("assets/images/google_icon.png", scale:1.6,),),
              ).paddingOnly(right: 4.w),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 5.5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: AppColors.grayShade),
                ),
                child: Center(child: Image.asset("assets/images/mac_icon.png", scale: 0.8,),),
              ),

            ],).paddingSymmetric(horizontal: 18.w,vertical: 3.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: AppColors.grayShade,
                    fontSize: 11.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));

                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: AppColors.deepPurple,
                      fontSize: 11.sp,
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.w600),
                ).paddingSymmetric(horizontal: 2.w),
              ),
            ],
          ).paddingSymmetric(vertical: 4.h),
        ],
      ),
    );
  }
}
