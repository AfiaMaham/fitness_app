import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit_fitness_and_workout_app/Controller/edit_profile_controller.dart';
import 'package:gofit_fitness_and_workout_app/helpers/constants.dart';
import 'package:gofit_fitness_and_workout_app/views/screens/let_you_in_screen.dart';
import 'package:gofit_fitness_and_workout_app/widgets/containerButton.dart';
import 'package:sizer/sizer.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FillProfileScreen extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String? countryCode;
  EditProfileController controller = Get.put(EditProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text(
            "Fill Your Profile",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "poppins regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 10),
            child: Text(
              "Don't worry. You can always change it later, or you can skip it for now",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:  AppColors.grayLight,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person,color: AppColors.grayShade,size: 110.sp,),
              ).paddingOnly(top: 3.h),
              Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.sp),
                  color: AppColors.deepPurple
                ),
                child: Icon(Icons.edit,color: AppColors.whiteColor,size: 17.sp,),
              ).paddingOnly(top: 16.h,left: 25.w),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 20),

                hintText: "Full Name",
                hintStyle: TextStyle(
                    color: AppColors.grayShade,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
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
                contentPadding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 20),

                hintText: "Nickname",
                hintStyle: TextStyle(
                    color: AppColors.grayShade,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
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
              controller: emailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 20),

                suffixIcon: Icon(Icons.email_outlined,color: AppColors.grayShade,),
                hintText: "Email",
                hintStyle: TextStyle(
                    color: AppColors.grayShade,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
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
              controller: phoneController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 20),

                hintText: "Phone Number",
                hintStyle: TextStyle(
                    color: AppColors.grayShade,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
                filled: true,
                fillColor: AppColors.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
              onChanged: (phone) {
                controller.phoneNumber.value = phone.number;
                controller.countryCode.value = phone.countryCode;
              },
            ),
          ).paddingOnly(top: 2.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: ContainerButton(
                  text: "Skip",
                  width: 43.w,
                  onButtonTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LetYouInScreen()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: ContainerButton(
                  text: "Start",
                  width: 43.w,
                  onButtonTap: () {
                    controller.updateProfile(
                      name: nameController.text.isNotEmpty ? nameController.text : "Cristina Ainsley",
                      nick: nicknameController.text.isNotEmpty ? nicknameController.text : "Cristina",
                      mail: emailController.text.isNotEmpty ? emailController.text : "cristina_ainsley@yourdomain.com",
                      phone: phoneController.text.isNotEmpty ? phoneController.text : "1234567890",
                      country: controller.countryCode.value.isNotEmpty ? controller.countryCode.value : "+1",
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LetYouInScreen()));
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
