import 'package:flutter/material.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class ContainerButton extends StatelessWidget {
  String text;
  double? width;
  double? height;
VoidCallback? onButtonTap;
 ContainerButton({
   required this.text,
   this.width,
   this.height,
   this.onButtonTap,
});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onButtonTap ,
      child: Container(
        height: height??6.h,
        width: width??80.w,
        decoration: BoxDecoration(
          color: text=="Back"||text=="Skip"||text=="Previous"||text=="Home"||text=="Change Password"?AppColors.lightPurple:AppColors.deepPurple,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: text=="Back"||text=="Home"||text=="Skip"||text=="Previous"||text=="Change Password"?AppColors.deepPurple:AppColors.whiteColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w200,
                fontFamily: "poppins regular"),
          ),
        ),
      ),
    );
  }
}
