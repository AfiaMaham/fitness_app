import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/new_password_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/new_password_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class EnterCodeScreen extends StatelessWidget {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();

  void _onChanged(String value, FocusNode currentFocus, FocusNode nextFocus) {
    if (value.length == 1) {
      currentFocus.unfocus();
      FocusScope.of(currentFocus.context!).requestFocus(nextFocus);
    }
  }
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
          "Forgot Password",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Code has been sent to +1 111 ******99",
            style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),
          ).paddingOnly(top: 20.h),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: TextFormField(
                    controller: controller1,
                    focusNode: focusNode1,
                    showCursor: false,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                      counterText: "",
                      filled: true,
                      fillColor: AppColors.grayLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      _onChanged(value, focusNode1, focusNode2);
                    },
                  ),
                ).paddingOnly(top: 2.h),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: TextFormField(
                    controller: controller2,
                    focusNode: focusNode2,
                    showCursor: false,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0),

                      counterText: "",
                      filled: true,
                      fillColor: AppColors.grayLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      _onChanged(value, focusNode2, focusNode3);
                    },
                  ),
                ).paddingOnly(top: 2.h),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: TextFormField(
                    controller: controller3,
                    focusNode: focusNode3,
                    showCursor: false,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0),

                      counterText: "",
                      filled: true,
                      fillColor: AppColors.grayLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      _onChanged(value, focusNode3, focusNode4);
                    },
                  ),
                ).paddingOnly(top: 2.h),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: TextFormField(
                    controller: controller4,
                    focusNode: focusNode4,
                    showCursor: false,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0),

                      counterText: "",
                      filled: true,
                      fillColor: AppColors.grayLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        focusNode4.unfocus();
                      }
                    },
                  ),
                ).paddingOnly(top: 2.h),
              ),
            ],
          ).paddingSymmetric(vertical: 4.h,horizontal: 5.w),
          Text("Resent code in -- s", style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold)),
          ContainerButton(
            text: "Verify",
            width: 90.w,
            onButtonTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewPasswordScreen()));
            },
          ).paddingOnly(top: 30.h)
        ],
      ),
    );
  }
}
