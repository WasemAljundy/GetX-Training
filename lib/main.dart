import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Usage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomeView(),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomeView(),)
      ],
    );
  }
}
