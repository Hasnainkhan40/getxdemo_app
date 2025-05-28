import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:demogetx_app/login_controller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: 'Enail'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.passwordContriller.value,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 50),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child:
                    controller.isLoding.value
                        ? CircularProgressIndicator()
                        : Container(
                          height: 45,
                          color: Colors.blueGrey,
                          child: Center(child: Text('login')),
                        ),
              );
            }),
          ],
        ),
      ),
    );
  }
}




/*
 //final CounterController controller = Get.put(CounterController());
  //Exampaltwo exampaltwo = Get.put(Exampaltwo());
  ////Esampal3_Swich exampal = Get.put(Esampal3_Swich());
  ExanpalListCantroller listController = Get.put(ExanpalListCantroller());

 body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 60),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementController();
        },
        backgroundColor: Colors.blue,


exampal 2
 Obx(
            () => Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.indigo.withOpacity(exampaltwo.opecity.value),
              ),
            ),
          ),
          Obx(
            () => Slider(
              value: exampaltwo.opecity.value,
              onChanged: (value) {
                exampaltwo.setOpecity(value);
              },
            ),
          ),
ow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notification'),
              Obx(
                () => Switch(
                  value: exampal.notification.value,
                  onChanged: (value) {
                    exampal.notification.value = true;
                    exampal.setNotification(value);
                  },
                ),
              ),
            ],
          ),
      ),*/