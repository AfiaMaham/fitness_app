import 'package:flutter/material.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/onboarding_screen.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/welcome_screen_image.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 130),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: RichText(
                  text: TextSpan(
                      text: "Welcome to 👋",
                      style: TextStyle(
                          fontFamily: "poppins regular",
                          fontWeight: FontWeight.bold,
                          fontSize: 29.sp,
                          color: AppColors.whiteColor),
                      children: [
                        TextSpan(
                            text: "Gofit",
                            style: TextStyle(
                                fontFamily: "poppins bold",
                                fontSize: 42.sp,
                                color: AppColors.whiteColor))
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical:60 ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "The best fitness app in this century to accompany your sports. ",
                  style: TextStyle(
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: AppColors.whiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
