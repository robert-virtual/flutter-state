import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:global_state/counter_cubit.dart';

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
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
            child: Column(
          children: [
            const Text("Favorites"),
            Text("Counter: $count"),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
