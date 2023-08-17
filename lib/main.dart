import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';
import 'screen/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
