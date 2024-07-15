import 'package:flutter/material.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/exercising_countDown.dart';
import 'package:sizer/sizer.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class GetReadyScreen extends StatefulWidget {
  @override
  _GetReadyScreenState createState() => _GetReadyScreenState();
}

class _GetReadyScreenState extends State<GetReadyScreen> {
  final int _duration = 10;
  final CountDownController _controller = CountDownController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Ready!",
              style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColors.deepPurple,
                  fontWeight: FontWeight.w600),
            ),
            CircularCountDownTimer(
              duration: _duration,
              initialDuration: 0,
              controller: _controller,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              ringColor: AppColors.lightPurple,
              fillColor: AppColors.deepPurple,
              backgroundColor: AppColors.whiteColor,
              strokeWidth: 7.w,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                fontSize: 45.sp,
                fontWeight: FontWeight.bold,
              ),
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: false, // Disable autoStart, we'll start it manually
              onComplete: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExercisingCountdown()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
