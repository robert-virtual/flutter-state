import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: Center(
          child: Column(
        children: const [
          Text("Favorites"),
          Text("Counter: 1"),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.plus_one)),
    );
  }
}
