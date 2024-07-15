import 'package:get/get.dart';

class EditProfileController extends GetxController {
  var selectedDate = ''.obs;

  void updateSelectedDate(String value) {
    selectedDate.value = value;
  }
  var fullName = ''.obs;
  var nickname = ''.obs;
  var email = ''.obs;
  var phoneNumber = ''.obs;
  var countryCode = ''.obs;

  void updateProfile({
    required String name,
    required String nick,
    required String mail,
    required String phone,
    required String country,
  }) {
    fullName.value = name;
    nickname.value = nick;
    email.value = mail;
    phoneNumber.value = phone;
    countryCode.value = country;
  }
}