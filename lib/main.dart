import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journo/app/examples/menus.dart';

import 'app/i18n/messgae.dart';

void main() { 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // final MessageController messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           translations: Messages(),
      locale: const Locale('zh', 'CN'),
      home: const Menus(),
    );
  }
}
