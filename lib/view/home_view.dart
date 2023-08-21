import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/main.dart';
import 'package:getx_course/view/first_screen.dart';
import 'package:getx_course/view/second_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              sharedPreferences!.clear();
              Get.offAllNamed('/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Get.to(() => FirstScreen()),
            child: const Text('First Screen'),
          ),
          ElevatedButton(
            onPressed: () => Get.to(() => SecondScreen()),
            child: const Text('Second Screen'),
          ),
        ],
      ),
    );
  }
}
