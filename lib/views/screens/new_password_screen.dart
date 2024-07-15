import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/layouts/home_layout.dart';
import 'package:gofit_fitness_and_workout_app/views/layouts/profile_layout.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/bottom_bar_navigation.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class NewPasswordScreen extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Create New Password",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/new_password.jpg",
            scale: 0.7,
          ),
          Text(
            "Create Your New Password",
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ).paddingOnly(right: 35.w),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          : Icons.visibility_off_outlined,color: AppColors.grayShade,)
                  ),
                  hintText: "New Password",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Obx((){
              return TextFormField(
                obscureText: controller.isHidden1.value?false:true,
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 18.0, horizontal: 24),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: AppColors.grayShade,
                  ).paddingOnly(left: 2.w),
                  suffixIcon:  GestureDetector(
                      onTap: (){
                        controller.isHidden1.value = !controller.isHidden1.value;
                      },
                      child: Icon(controller.isHidden1.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,color: AppColors.grayShade,)
                  ),
                  hintText: "Confirm Password",
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
          ).paddingSymmetric(vertical: 1.5.h),
          ContainerButton(
            text: "Continue",
            width: 88.w,
            onButtonTap: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: SizedBox(
                      width: double.infinity,
                      height: 43.h,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(28.sp),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.deepPurple
                            ),
                            child: Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.sp),
                                  color: AppColors.whiteColor
                              ),
                              child:Icon(Icons.check,color: AppColors.deepPurple,),
                            ),
                          ).paddingOnly(top: 6.h),
                          Text(
                            "Congratulations!",
                            style: TextStyle(
                                color: AppColors.deepPurple,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ).paddingSymmetric(vertical: 2.h),
                          Text(
                            "Your account is ready to use",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          ContainerButton(
                            text: "Go to Homepage",
                            width: 67.w,
                            onButtonTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomBarNavigation()));
                            },
                          ).paddingSymmetric(vertical: 3.h),
                        ],
                      ),
                    ),
                  ),);
            },
          ).paddingOnly(top: 7.h)
        ],
      ).paddingSymmetric(horizontal: 5.w),
    );
  }
}
