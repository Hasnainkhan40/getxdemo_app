import 'package:get/get.dart';

class Esampal3_Swich extends GetxController {
  RxBool notification = false.obs;
  setNotification(bool value) {
    notification.value = value;
  }
}
