import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:gofit_fitness_and_workout_app/widgets/subscription_options.dart';
import 'package:sizer/sizer.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/premium_pic.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.0), // Transparent at the top
                  Colors.white.withOpacity(0.9), // Whitish at the bottom
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Content
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Be Premium",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Get Unlimited Access",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ).paddingSymmetric(vertical: 0.3.h),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enjoy workout without ads and restrictions",
                    style: TextStyle(
                    fontWeight: FontWeight.w400,
                        fontSize: 11.sp),
                  ).paddingOnly(bottom: 4.h),
                ),
                SubscriptionOption(
                  duration: '1 Month',
                  price: '\$16.99/m',
                  index: 0,
                ),
                SubscriptionOption(
                  duration: '6 Months',
                  price: '\$66.99/m',
                  index: 1,
                ),
                SubscriptionOption(
                  duration: '12 Months',
                  price: '\$116.99/m',
                  index: 2,
                ),
                ContainerButton(
                  text: "Subscribe",
                  width: 90.w,
                ).paddingSymmetric(vertical: 5.h)

              ],
            ),
          ),
        ],
      ),


    );
  }
}
