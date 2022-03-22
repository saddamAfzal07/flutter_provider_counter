import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/controller/counter.dart';
import 'package:flutter_provider_counter/features/counter_screen/presentation/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterApp(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CounterScreen(),
      ),
    );
  }
}
