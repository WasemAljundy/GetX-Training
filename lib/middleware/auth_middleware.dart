import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_course/main.dart';

class AuthMiddleWare extends GetMiddleware {


  @override
  int? get priority => 1;

@override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences!.getString('id') != null) {
      return const RouteSettings(name: '/home');
    }
    return null;
  }
}