import 'package:flutter_getx/models/person.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  final person = Person(name: "Nicho").obs;

  void toUpperName() => person.update(
        (val) {
          person.value.name = person.value.name.toUpperCase();
        },
      );
}
