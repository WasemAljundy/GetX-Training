import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  // final controller = Get.lazyPut(() => HomeController());
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => controller.increment(),
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Center(
              child: Text(
                '${controller.counter.value}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.remove,
                size: 30,
              ),
              onPressed: () => controller.decrement(),
            ),
          ],
        ),
      ),
    );
  }
}
