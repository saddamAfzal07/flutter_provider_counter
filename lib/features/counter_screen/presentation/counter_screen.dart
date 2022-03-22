import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/controller/counter.dart';
import 'package:flutter_provider_counter/controller/counter.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<CounterApp>((context), listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterApp>(builder: ((context, value, child) {
            return Text(
              "${value.count}",
              style: const TextStyle(
                fontSize: 60,
              ),
            );
          })),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    state.Increment();
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    state.Decrement();
                  },
                  child: const Icon(Icons.remove),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
