import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/select_age_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class SelectGenderScreen extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text(
            "Tell Us About Yourself",
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,fontFamily: "poppins regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37,vertical:10 ),
            child: Text(
              "To give you a better experience and results we need to know your gender",
              style: TextStyle(fontSize: 12.sp,),
            ),
          ),
          Obx((){
            return   GestureDetector(
              onTap: () {

                controller.colors[0]=AppColors.deepPurple;
                controller.colors[1]=AppColors.grayShade;

              },
              child: Container(
                  padding:  EdgeInsets.symmetric(horizontal: 57,vertical: 60),

                  decoration: BoxDecoration(
                      color: controller.colors[0],
                      shape: BoxShape.circle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 50.sp,
                        color: AppColors.whiteColor,
                      ),
                      Text("Male",style: TextStyle(color:AppColors.whiteColor,fontSize: 13.sp,fontWeight: FontWeight.w600,fontFamily: "poppins regular"),).paddingOnly(top: 1.h),
                    ],)

              ).paddingOnly(top: 5.h),
            );
          }),
        Obx((){
          return GestureDetector(
          onTap: () {
            controller.colors[1]=AppColors.deepPurple;
            controller.colors[0]=AppColors.grayShade;
          },
          child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 57,vertical: 60),

              decoration: BoxDecoration(
                  color: controller.colors[1],
                  shape: BoxShape.circle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    size: 50.sp,
                    color: AppColors.whiteColor,
                  ),
                  Text("Female",style: TextStyle(color:AppColors.whiteColor,fontSize: 13.sp,fontWeight: FontWeight.w600,fontFamily: "poppins regular"),).paddingOnly(top: 1.h),
                ],)

          ),
        );}),

          Padding(
            padding:  EdgeInsets.only(top: 9.h),
            child: ContainerButton(text: "Continue",onButtonTap: (){  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SelectAgeScreen()));},),
          )



        ],
      ),
    );
  }
}
