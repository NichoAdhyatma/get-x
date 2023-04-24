import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/person_controller.dart';
import 'package:get/get.dart';

class Bab2 extends StatelessWidget {
  const Bab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personC = Get.put(PersonController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX 2"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Nama saya adalah ${personC.person.value.name}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => personC.toUpperName(),
        child: const Icon(Icons.text_increase),
      ),
    );
  }
}
