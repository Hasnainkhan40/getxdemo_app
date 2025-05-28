import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordContriller = TextEditingController().obs;
  final isLoding = false.obs;

  void loginApi() async {
    isLoding.value = true;
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {'emal': '', 'passwoed': ''},
      );
      print(response.statusCode);
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        isLoding.value = false;
        Get.snackbar('Login Successfull', 'Congretulation');
      } else {
        isLoding.value = false;
        Get.snackbar('Exceptions', data['error']);
      }
    } catch (e) {
      isLoding.value = false;
      Get.snackbar('Exceptions', e.toString());
    }
  }
}
