import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomClassExample extends StatelessWidget {
  var teacher = Teacher();
  var upper = false.obs;

  CustomClassExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Class Example"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "我的名字是 ${teacher.name.value}",
                style: const TextStyle(fontSize: 24, color: Colors.red),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                child: Obx(() => Text(upper.value? "转换为小写" : "转换为大写")),
                onPressed: () {
                  teacher.name.value = upper.value? teacher.name.value.toLowerCase() : teacher.name.value.toUpperCase();
                  upper.value =!upper.value;   // 切换状态
                }),
          ],
        )));
  }
}

class Teacher {
  // rx 变量
  var name = "Jimi".obs;
  var age = 18.obs;
}
