import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:global_state/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Home"),
              Text("Counter: $count"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/favorites");
                  },
                  child: const Text("favorites"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
