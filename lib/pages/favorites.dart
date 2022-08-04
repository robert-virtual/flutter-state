import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_state/controllers/counter_controller.dart';

class FavoritesPage extends GetView<CounterController> {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: Center(
          child: Column(
        children: [
          const Text("Favorites"),
          Obx(() => Text("Counter ${controller.counter}"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
