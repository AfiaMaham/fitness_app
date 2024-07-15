import 'dart:ui';

import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';

class SelectionController extends GetxController {
  RxBool remember=false.obs;
  Rx<bool> isHidden = true.obs;
  Rx<bool> isHidden1 = true.obs;
  Rx<bool> darkTheme = false.obs;
   var radioButton = 0.obs;

  RxList<Color> colors = [AppColors.grayShade, AppColors.grayShade].obs;
  RxList<bool> selectedGoal = [false, false, false, false, false, false].obs;
  RxList<Color> borderColor = [
    AppColors.whiteColor,
    AppColors.whiteColor,
    AppColors.whiteColor,
    AppColors.whiteColor,
    AppColors.whiteColor,
    AppColors.whiteColor
  ].obs;

  List<String> goal = [
    "Get Fitter",
    "Gain Weight",
    "Lose Weight",
    "Building Muscles",
    "Improving Endurance",
    "Others"
  ];
  List<String> activityLevel = [
    "Beginner",
    "Intermediate",
    "Advanced",
  ];
  RxList<Color> activityColor =
      [AppColors.whiteColor, AppColors.whiteColor, AppColors.whiteColor].obs;
  RxList<Color> activityTextColor =
      [AppColors.blackColor, AppColors.blackColor, AppColors.blackColor].obs;
  List<String> notificationSetting = [
    "General Notification",
    "Sound",
    "Vibrate",
    "App Updates",
    "New Service Update",
    "New Tips Available"
  ];
  RxList<bool> selectedNotification = [true, false, false, true, false, false].obs;
  List<String> securitySetting = [
    "Face ID",
    "Remember me","Touch ID"
  ];
  RxList<bool> selectedSecurity = [false, true, true].obs;



}
