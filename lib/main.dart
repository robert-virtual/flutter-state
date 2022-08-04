import 'package:flutter/material.dart';
import 'package:global_state/controllers/counter_controller.dart';
import 'package:global_state/controllers/home_binding.dart';
import 'package:global_state/pages/favorites.dart';
import 'package:global_state/pages/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: "/", page: () => const HomePage(), binding: HomeBinding()),
        GetPage(
            name: "/favorites",
            page: () => const FavoritesPage(),
            binding: HomeBinding())
      ],
    );
  }
}
