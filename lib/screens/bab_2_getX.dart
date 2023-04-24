import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:flutter_getx/controllers/person_controller.dart';
import 'package:get/get.dart';

class Bab2GetX extends StatelessWidget {
  const Bab2GetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX 2"),
      ),
      body: Center(
        child: GetX<CounterController>(
          init: CounterController(),
          builder: (controller) => Text(
            "Count ${controller.counter}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<CounterController>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
