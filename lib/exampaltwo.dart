import 'package:get/get.dart';

class Exampaltwo extends GetxController {
  RxDouble opecity = .4.obs;

  setOpecity(double value) {
    opecity.value = value;
  }
}
