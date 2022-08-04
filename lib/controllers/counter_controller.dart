import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  void increment() => counter++;
}
