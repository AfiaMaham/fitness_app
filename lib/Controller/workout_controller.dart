import 'package:get/get.dart';

class WorkoutController extends GetxController{
  var selectedWorkoutName = ''.obs;
  var selectedWorkoutLevel = ''.obs;
  var selectedWorkoutTime = ''.obs;

  List<String> featuresPics = [
    "assets/images/stretch.png",
    "assets/images/home_features_pic2.jpg",
    "assets/images/home_features_pic3.png",
    "assets/images/home_features_pic4.png"
  ];
  List<String> featuresName = [
    "Full Body Stretching  ",
    "Full Body Strengthening",
    "Full Body Yoga",
    "Full Body Strengthening",
  ];
  List<String> easyExercises = [
    "assets/images/easy_pic1.png",
    "assets/images/easy_pic2.jpg",
    "assets/images/easy_pic3.jpg",
    "assets/images/easy_pic4.png"
  ];
  List<String> interExercises = [
    "assets/images/inter_pic1.jpg",
    "assets/images/inter_pic2.png",
    "assets/images/inter_pic3.png",
    "assets/images/inter_pic4.png"
  ];
  List<String> advanceExercises = [
    "assets/images/advance_pic1.jpg",
    "assets/images/advance_pic2.png",
    "assets/images/advance_pic3.jpg",
    "assets/images/advance_pic4.png"
  ];
  List<String> exercisesName = [
    "Squat Movement Exercises",
    "Full Body Yoga",
    "Full Body Strengthening",
    "Abdominal Exercises"
  ];
  // List<String> easyExercisesTime = [
  //
  // ];
}