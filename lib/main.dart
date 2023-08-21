import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/middleware/auth_middleware.dart';
import 'package:getx_course/utils/binding_injections.dart';
import 'package:getx_course/view/first_screen.dart';
import 'package:getx_course/view/home_view.dart';
import 'package:getx_course/view/login_view.dart';
import 'package:getx_course/view/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
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
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginView(),
          middlewares: [AuthMiddleWare()],
        ),
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
