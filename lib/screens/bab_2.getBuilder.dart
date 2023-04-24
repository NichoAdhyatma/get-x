import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class Bab2GetXBuilder extends StatelessWidget {
  const Bab2GetXBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterC = Get.find<CounterController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX 2"),
        actions: [
          IconButton(
            onPressed: counterC.darkMode,
            icon: const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) => Text(
            "Count from Get builder ${controller.counterSimple}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterC.incrementSimple(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
