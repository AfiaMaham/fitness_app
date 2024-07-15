import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepPurple,
      body: Center(
        child: Image.asset(
          "assets/images/dumb-bell.png",
          scale: 1.5.sp,
        ),
      ),
    );
  }
}