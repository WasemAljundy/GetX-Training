import 'package:flutter/material.dart';
import 'package:getx_course/main.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            sharedPreferences!.setString('id', '1');
            Get.offNamed('/home');
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
