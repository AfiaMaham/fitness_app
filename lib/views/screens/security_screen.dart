import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class SecurityScreen extends StatelessWidget {
  SelectionController controller = Get.put(SelectionController());

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
          "Security",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 18.h,
            child: ListView.builder(
              itemCount: controller.securitySetting.length,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.securitySetting[index],
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
                          value: controller.selectedSecurity[index],
                          onChanged: (value) {
                            controller.selectedSecurity[index]=value!;
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 1.h),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Google Authenticator",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "poppins regular"),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14.sp,
                color: AppColors.deepPurple,
              ).paddingOnly(right: 1.w)
            ],
          ).paddingOnly(top: 2.h),
          ContainerButton(
            text: "Change Password",
            width: 90.w,
          ).paddingOnly(top: 5.h),
        ],
      ).paddingSymmetric(horizontal: 5.w),
    );
  }
}
