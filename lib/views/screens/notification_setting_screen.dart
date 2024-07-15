import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotificationSettingScreen extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());
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
      body: ListView.builder(
        itemCount: controller.notificationSetting.length,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              controller.notificationSetting[index],
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "poppins regular"),
            ),
            SizedBox(
              width: 13.w,
              height: 4.3.h,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Obx((){
                  return Switch(
                    value: controller.selectedNotification[index],
                    onChanged: (value) {
                      controller.selectedNotification[index]=value!;
                    },
                  );
                }),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 5.w,vertical: 1.h),
      ),
    );
  }
}
