import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/page_view_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/select_gender_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen extends StatelessWidget {
  PageViewController controller = Get.put(PageViewController());
  late PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    controller.onPageChanged(index);
                  },
                  itemCount: controller.onBoardingPics.length,
                  itemBuilder: (_, i) {
                    return Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.deepPurple
                        ),
                        child: Image.asset(controller.onBoardingPics[i]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 17),
                        child: Text(controller.onBoardingText[i], style: TextStyle(
                            fontFamily: "poppins regular",
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp),),
                      )
                    ],);
                  })),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    controller.onBoardingPics.length,
                        (index) =>
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Obx(() => Container(
                            height: 1.h,
                            width:
                            controller.activeIndex.value == index ? 7.w : 2.w,
                            decoration: BoxDecoration(
                              color: controller.activeIndex.value == index
                                  ? AppColors.deepPurple
                                  : AppColors.grayShade,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          )),

                        )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 43),
            child: ContainerButton(text: "Next",onButtonTap: (){  if (controller.activeIndex.value ==
                controller.onBoardingPics.length - 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectGenderScreen()));
            }
            else{
              _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            }},),
          ),
        ],
      ),
    );
  }
}


