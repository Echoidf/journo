import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ObxCountExample extends StatelessWidget {
  RxInt counter = 0.obs;

  ObxCountExample({super.key});

  void increment() {
    counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Obx 计数器 example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "当前计数: ${counter.value}",
              style: const TextStyle(fontSize: 24, color: Colors.black),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: increment,
              child: const Text('点击 +1'),
            ),
          ],
        ),
      ),
    );
  }
}