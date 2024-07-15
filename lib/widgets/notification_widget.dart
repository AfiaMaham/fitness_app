import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';
class NotificationWidget extends StatelessWidget {
  Color? iconColor;
  Color? containerColor;
  String? headingText;
  String? dataText;
  IconData? icon;
  NotificationWidget({
    required this.iconColor,
    required this.containerColor,
    required this.headingText,
    required this.dataText,
    required this.icon,
});
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 13.h,
      width: 96.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(18.sp),
              decoration: BoxDecoration(
                color: containerColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 20.sp,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(headingText!,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600
                ),),
                Text(dataText!,style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.grayShade2
                ),),
              ],).paddingOnly(left: 3.w),
          ],).paddingOnly(left: 5.w),
      ),
    ).paddingSymmetric(horizontal: 2.w,vertical: 0.5.h);
  }
}
