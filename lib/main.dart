import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/utils/binding_injections.dart';
import 'package:getx_course/view/first_screen.dart';
import 'package:getx_course/view/home_view.dart';
import 'package:getx_course/view/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Usage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // home: const HomeView(),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeView(),
          binding: BindingInjections(),
        ),
        GetPage(
          name: '/first',
          page: () => FirstScreen(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondScreen(),
        ),
      ],
    );
  }
}
