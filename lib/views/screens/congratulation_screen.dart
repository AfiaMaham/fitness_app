import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/bottom_bar_navigation.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';
class CongratulationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(children: [
        Image.asset("assets/images/congratulation_pic.jpg",scale: 2,).paddingOnly(top: 10.h),
        Text("Congratulations!",style: TextStyle(
          color: AppColors.deepPurple,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600
        ),),
        Text("You have completed the workout!",style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400
        ),).paddingSymmetric(vertical: 1.h),
        Divider(color: AppColors.lightPurple,),
        ContainerButton(text: "Home",onButtonTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBarNavigation()));
        },).paddingOnly(top: 4.h)
      ],),
    );
  }
}
