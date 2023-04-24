import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import './screens/home.dart';
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
        home: const HomePage(),
      ),
    );
  }
}
