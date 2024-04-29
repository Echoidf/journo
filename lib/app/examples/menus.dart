
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journo/app/examples/getx_controller.example.dart';
import 'package:journo/app/examples/obx_count_example.dart';
import 'package:journo/app/examples/obx_custom_class_example.dart';

// 目录页
class Menus extends StatelessWidget {
  const Menus({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx案例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ObxCountExample());
              },
              child: const Text('计数器案例'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(CustomClassExample());
              },
              child: const Text('自定义类型案例'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetxControllerExample());
              },
              child: const Text('Getx controller 案例'),
            ),
          ],
        ),
      )
    );
  }
}