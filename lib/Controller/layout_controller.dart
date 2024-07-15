import 'package:get/get.dart';

class LayoutController extends GetxController{
  Rx<int> selected = 0.obs;
  var selectedDate = DateTime.now().obs;

  void setSelectedDate(DateTime date) {
    selectedDate.value = date;
  }
}