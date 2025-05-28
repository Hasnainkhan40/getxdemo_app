import 'package:get/get.dart';

class ExanpalListCantroller extends GetxController {
  RxList<String> fruitList =
      [
        'apple',
        'orenge',
        'bannana',
        'mango',
        'gavava',
        'balckberry',
        'blueberry',
      ].obs;
  RxList<dynamic> newfruit = [].obs;

  addFevorite(String value) {
    newfruit.add(value);
  }

  removeFevorite(String value) {
    newfruit.remove(value);
  }
}
