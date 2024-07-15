import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/select_activity_level_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class SelectGoalScreen extends StatelessWidget {
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
            "What Is Your Goal?",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: Text(
              "You can choose more than one.Don't worry. You can always change it later",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          Container(
            height: 58.h,
            child: ListView.builder(
                itemCount: controller.goal.length,
                itemBuilder: (context,index)=> Obx((){
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 1.3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.goal[index],
                          style: TextStyle(
                              fontFamily: "poppins regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ).paddingOnly(left: 5.w),
                        Checkbox(
                            value: controller.selectedGoal[index],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (value) {
                              controller.selectedGoal[index]=value!;

                            }),


                      ],
                    ),
                  ).paddingSymmetric(horizontal: 5.w,vertical: 0.5.h);

                }),
                ),
          ).paddingOnly(top: 2.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: ContainerButton(
                  text: "Back",
                  width: 43.w,
                  onButtonTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: ContainerButton(
                  text: "Continue",
                  width: 43.w,
                  onButtonTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectActivityLevelScreen()));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
