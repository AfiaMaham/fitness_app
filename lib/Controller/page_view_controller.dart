import 'dart:ui';

import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';

class PageViewController extends GetxController {
  RxInt activeIndex = 0.obs;
  RxInt currentValue = 32.obs;
  List<String> onBoardingPics = [
    "assets/images/onBoarding1.jpg",
    "assets/images/onBoarding2.png",
    "assets/images/onboarding3.jpg"
  ];
  List<String> onBoardingText = [
    "Find the right workout for what you need",
    "Make suitable workouts  and great results",
    "Let's do a workout and live healthy with us"
  ];

  void onPageChanged(int index) {
    activeIndex.value = index;
  }


}
