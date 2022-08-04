import 'package:flutter/material.dart';
import 'package:global_state/providers/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home"),
            Text("Counter: ${counter.value}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/favorites");
                },
                child: const Text("favorites"))
          ],
        ),
      ),
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
