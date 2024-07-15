import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class DateTile extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final VoidCallback onTap;

  const DateTile({
    Key? key,
    required this.date,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.deepPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              ["M", "T", "W", "T", "F", "S", "S"][date.weekday - 1],
              style: TextStyle(fontSize: 12.sp, color: isSelected ? Colors.white : Colors.black),
            ),
            Text(
              date.day.toString(),
              style: TextStyle(fontSize: 12.sp, color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}