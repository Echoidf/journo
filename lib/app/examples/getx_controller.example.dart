import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journo/app/examples/obx_custom_class_example.dart';

class MyController extends GetxController {
  var teacher = Teacher();

  var upper = false.obs;

  void invertCase() {
    upper.value =!upper.value;
    teacher.name.value =
        upper.value? teacher.name.value.toUpperCase() : teacher.name.value.toLowerCase();

    update();
  }
}

// ignore: must_be_immutable
class GetxControllerExample extends StatelessWidget {
  MyController myController = Get.put(MyController());

  GetxControllerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx Controller Example'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text("我的名字是 ${controller.teacher.name.value}",
                      style: const TextStyle(fontSize: 20));
                }),
            const SizedBox(height: 20),
            ElevatedButton(
              child: Obx(() => Text(myController.upper.value? "转换为小写" : "转换为大写")),
              onPressed: () => myController.invertCase(),
              // onPressed: () => Get.find<MyController>().invertCase(),
            ),
          ],
        )));
  }
}
