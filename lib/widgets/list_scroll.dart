import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/page_view_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class ListScroll extends StatelessWidget {
   late int index;
  late int initial;
   ListScroll({
     required this.index,
     required this.initial,
   });
  Widget bars() {
    return Center(
      child: SizedBox(
        height: 14.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                2,
                (index) => Divider(
                      thickness: 3.sp,
                      color: AppColors.deepPurple,
                    )),
          ],
        ),
      ),
    );
  }
  PageViewController controller = Get.put(PageViewController());
  @override
  Widget build(BuildContext context) {
    PageController con = PageController(
      viewportFraction: 0.2,
      initialPage: initial,
    );
    return SizedBox(
      height: 50.h,
      width: 25.w,
      child: Stack(
        children: [
          bars(),
          Obx(
                () => PageView(
              physics:  BouncingScrollPhysics(),
              controller: con,
              scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                controller.currentValue.value = index;
              },
                  children: [
                    ...List.generate(index, (index){
                      double itemHeight=controller.currentValue.value == index
                          ? 9.h
                          : controller.currentValue.value == index - 1 ||
                          controller.currentValue.value == index + 1
                          ? 4.5.h
                          : 3.h;
                      return Center(
                          child: Container(
                            height: itemHeight,
                            child: Text(
                              index.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: controller.currentValue.value == index
                                      ? 43.sp
                                      : controller.currentValue.value == index - 1 ||
                                      controller.currentValue.value == index + 1
                                      ? 27.sp
                                      :  18.sp,
                                  color: controller.currentValue.value == index
                                      ? AppColors.deepPurple
                                      : controller.currentValue.value == index - 1 ||
                                      controller.currentValue.value == index + 1
                                      ? AppColors.grayDark
                                      : AppColors.grayDark.withOpacity(0.7)),
                            ),
                          ));
                    })
                  ],



            ),
          ),

        ],
      ),
    );
  }
}
