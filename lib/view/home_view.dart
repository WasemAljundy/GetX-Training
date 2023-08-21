import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

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
