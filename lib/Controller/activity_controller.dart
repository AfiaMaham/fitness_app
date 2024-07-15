import 'package:get/get.dart';

class ActivityController extends GetxController{
  var currentIndex = 0.obs;
  List<String> activityImages = [
    "assets/images/activity_pic1.png",
    "assets/images/activity_pic2.png",
    "assets/images/activity_pic3.png",
    "assets/images/activity_pic4.png",
    "assets/images/activity_pic5.png",
    "assets/images/activity_pic6.png",
    "assets/images/activity_pic7.png",
    "assets/images/activity_pic8.png",
    "assets/images/activity_pic9.png",
    "assets/images/activity_pic10.jpg"
  ];
  List<String> activityName = [
   "Warrior 1",
    "Side Plank",
    "One Leg Downward",
    "Triangle Pose",
    "Stork Pose",
    "Wheel Pose",
    "One Leg Head",
    "Half Moon Pose",
    "Camel Pose",
    "One Leg Up"
  ];
  List<int> activityPeriod = [
  30,20,20,40,20,30,40,30,30,40
  ];
  void nextExercise() {
    if (currentIndex.value < activityImages.length - 1) {
      currentIndex.value++;
    }
  }

  void previousExercise() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    }
  }

}