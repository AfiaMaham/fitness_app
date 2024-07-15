import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/edit_profile_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

class EditProfileScreen extends StatelessWidget {
   EditProfileController controller = Get.put(EditProfileController());
   TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: controller.fullName.value);
    final nicknameController = TextEditingController(text: controller.nickname.value);
    final emailController = TextEditingController(text: controller.email.value);
    final phoneController = TextEditingController(text: controller.phoneNumber.value);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontFamily: "poppins regular",
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ).paddingOnly(top: 2.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: nicknameController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ).paddingOnly(top: 2.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Obx(() {
              dateController.text = controller.selectedDate.value;
              return TextFormField(
                controller: dateController,
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    String formattedDate =
                        "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                    controller.updateSelectedDate(formattedDate);
                  }
                },
                decoration: InputDecoration(
                  hintText: "Date of birth",
                  hintStyle: TextStyle(
                      color: AppColors.grayShade3,
                      fontFamily: "poppins regular",
                      fontWeight: FontWeight.w500),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                  suffixIcon: Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.grayShade,
                    size: 15.sp,
                  ),
                  filled: true,
                  fillColor: AppColors.grayLight,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              );
            }),
          ).paddingOnly(top: 2.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.grayShade,
                  size: 15.sp,
                ),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ).paddingOnly(top: 2.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: IntlPhoneField(
              initialCountryCode: controller.countryCode.value,
              controller: phoneController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ).paddingOnly(top: 2.h),
          ContainerButton(text: "Update").paddingSymmetric(vertical: 2.h),
        ],
      ),
    );
  }
}
