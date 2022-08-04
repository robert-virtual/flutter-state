import 'package:get/get.dart';
import 'package:global_state/controllers/counter_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
