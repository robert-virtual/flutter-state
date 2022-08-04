import 'package:flutter/material.dart';
import 'package:global_state/providers/counter.dart';

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
        children: [
          const Text("Favorites"),
          Text("Counter: ${counter.value}"),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter.value++;
            });
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
