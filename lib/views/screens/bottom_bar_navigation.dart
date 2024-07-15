import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/layout_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/layouts/home_layout.dart';
import 'package:gofit_fitness_and_workout_app/views/layouts/profile_layout.dart';
import 'package:sizer/sizer.dart';

class BottomBarNavigation extends StatelessWidget {
  LayoutController controller = Get.put(LayoutController());
  List<Widget> layouts = [
    HomeLayout(),
    // DiscoverLayout(),
    // InsightLayout(),
    ProfileLayout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(() {
        return layouts[controller.selected.value];
      }),
      extendBody: true,
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          icons: [Icons.home, Icons.person],
          //Icons.search,Icons.insert_chart_outlined,
          activeColor: AppColors.deepPurple,
          inactiveColor: AppColors.grayShade3,
          activeIndex: controller.selected.value,
          onTap: (int value) {
            controller.selected.value = value;
          },
          iconSize: 30.sp,
          height: 8.h,
          // notchMargin: 5,
           gapLocation: GapLocation.center,
          // notchSmoothness: NotchSmoothness.defaultEdge,
        );
      }),

      // bottomNavigationBar: FloatingNavbar(
      //   backgroundColor: AppColors.blueShade,
      //   onTap: (int val) {
      //
      //   },
      //   currentIndex: 0,
      //   items: [
      //     FloatingNavbarItem(icon: Icons.home,title: 'Home' ),
      //     FloatingNavbarItem(icon: Icons.explore, title: 'Discover'),
      //     FloatingNavbarItem(icon: Icons.graphic_eq, title: 'Insight'),
      //     FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
      //   ],
      // ),
    );
  }
}
