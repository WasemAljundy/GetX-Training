import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Counter = ${controller.counter}'),
      ),
    );
  }
}
