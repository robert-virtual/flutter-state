import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_state/controllers/counter_controller.dart';

class HomePage extends GetView<CounterController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home"),
            Obx(() => Text("Counter ${controller.counter}")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/favorites");
                },
                child: const Text("favorites"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
