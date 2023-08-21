import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class BindingInjections implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}