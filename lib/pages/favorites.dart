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
      body: StreamBuilder(
          stream: counterService.stream$,
          builder: (context, snapshot) {
            return Center(
                child: Column(
              children: [
                const Text("Favorites"),
                Text("Counter: ${snapshot.data}"),
              ],
            ));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterService.increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
