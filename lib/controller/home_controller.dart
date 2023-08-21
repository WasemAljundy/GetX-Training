import 'package:get/get.dart';

class HomeController extends GetxController {

  // int counter = 0;
  RxInt counter = 0.obs;

  void increment() {
    counter++;
    // update();
  }

  void decrement() {
    counter--;
    // update();
  }
}