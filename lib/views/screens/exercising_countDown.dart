import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/activity_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/congratulation_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class ExercisingCountdown extends StatefulWidget {
  @override
  State<ExercisingCountdown> createState() => _ExercisingCountdownState();
}

class _ExercisingCountdownState extends State<ExercisingCountdown> {
  ActivityController activityController = Get.put(ActivityController());
   CountDownController _controller = CountDownController();
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.start();
    });
  }
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //      _controller.start();
  //      activityController.nextExercise();
  //   });
    // ever(activityController.currentIndex, (_) {
    //   _controller.restart(duration: activityController.activityPeriod[activityController.currentIndex.value]);
    //   print("Current Index Changed: ${activityController.currentIndex.value}");
    // });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        var currentIndex = activityController.currentIndex.value;
        var currentImage = activityController.activityImages[currentIndex];
        var currentName = activityController.activityName[currentIndex];
        var currentDuration = activityController.activityPeriod[currentIndex];

        return  Column(children: [
          Image.asset(currentImage,scale: 2,),
          Text(currentName,style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),).paddingOnly(top: 3.h),
          CircularCountDownTimer(
            duration:  currentDuration,
            initialDuration: 1,
            controller: _controller,
            width: 40.w,
            height: 15.h,
            ringColor: AppColors.lightPurple,
            fillColor: AppColors.deepPurple,
            backgroundColor: AppColors.whiteColor,
            strokeWidth: 4.w,
            strokeCap: StrokeCap.round,
            textStyle: TextStyle(
              fontSize: 35.sp,
              fontWeight: FontWeight.bold,
            ),
            textFormat: CountdownTextFormat.S,
            isReverse: false,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
            onComplete: () {
              if (currentIndex == activityController.activityImages.length - 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CongratulationScreen()));
              } else {
                activityController.nextExercise();
                _controller.restart(duration: activityController.activityPeriod[activityController.currentIndex.value]);
              }
            },
          ).paddingSymmetric(vertical: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerButton(text: "Pause",width: 22.w,height:4.h,onButtonTap: (){
                _controller.pause();
              },),
              ContainerButton(text: "Resume",width: 23.w,height:4.h,onButtonTap: (){
                _controller.resume();;
              },),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              ContainerButton(text: "Skip",width: 42.w,height:5.h,   onButtonTap: () {
                if (currentIndex == activityController.activityImages.length - 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CongratulationScreen()));
                } else {
                  activityController.nextExercise();
                  _controller.restart(duration: activityController.activityPeriod[activityController.currentIndex.value]);
                }
              },),
            ],).paddingOnly(top: 10.h),

        ],);
      }),

    );
  }
}



