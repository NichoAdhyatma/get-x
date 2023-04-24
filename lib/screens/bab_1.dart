import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class Bab1 extends StatelessWidget {
  const Bab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX"),
        actions: [
          IconButton(
            onPressed: () => c.darkMode(),
            icon: const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Number ${c.counter}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
