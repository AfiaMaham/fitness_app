import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/selection_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/fill_profile_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class SelectActivityLevelScreen extends StatelessWidget {
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
            "Physical Activity Level?",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: Text(
              "Choose any regular activity level. This will help us to personalize plans for you",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),

          Container(
            height: 26.h,
            child:  ListView.builder(
                itemCount: controller.activityLevel.length,
                itemBuilder: (context,index)=> Obx((){
                  return GestureDetector(
                    onTap: (){
                      for(int i=0;i<=2;i++){
                        if(i==index){
                          controller.activityColor[i]=AppColors.deepPurple;
                          controller.activityTextColor[i]=AppColors.whiteColor;
                        }
                        else{
                          controller.activityColor[i]=AppColors.whiteColor;
                          controller.activityTextColor[i]=AppColors.blackColor;

                        }
                      }
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 2.5.h),
                        decoration: BoxDecoration(
                          color: controller.activityColor[index],
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Center(
                            child:Text(controller.activityLevel[index],
                              style: TextStyle(
                                  fontFamily: "poppins regular",
                                  fontWeight: FontWeight.w400,
                                  color: controller.activityTextColor[index],
                                  fontSize: 12.sp),)

                        )).paddingSymmetric(vertical: 0.5.h),
                  );
                }),
              ).paddingSymmetric(horizontal: 5.w),


            ).paddingOnly(top: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 165),
                child: ContainerButton(
                  text: "Back",
                  width: 43.w,
                  onButtonTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 165),
                child: ContainerButton(
                  text: "Continue",
                  width: 43.w,
                  onButtonTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FillProfileScreen()));
                  },
                ),
              )
            ],
          ),
        ],));


  }
}
