import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  var counterSimple = 0;
  var isDark = false.obs;

  void darkMode() => isDark.value = !isDark.value;

  void increment() => counter++;

  void incrementSimple() {
    counterSimple++;
    update();
  }
}
