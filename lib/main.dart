import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:flutter_getx/screens/bab_2.getBuilder.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterC = Get.put(CounterController());
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: const Bab2GetXBuilder(),
      ),
    );
  }
}
