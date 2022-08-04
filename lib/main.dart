import 'package:flutter/material.dart';
import 'package:global_state/pages/favorites.dart';
import 'package:global_state/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/favorites": (context) => const FavoritesPage()
      },
    );
  }
}
