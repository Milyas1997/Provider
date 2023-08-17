import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/provider/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('build is called');

    final countProvider = Provider.of<CounterProvider>(context, listen: false);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Timer.periodic(const Duration(seconds: 1), (timer) {
            countProvider.increment();
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:
              Consumer<CounterProvider>(builder: (context, value, child) {
            debugPrint('only text widget is build');
            return Text(
              value.counter.toString(),
              style: const TextStyle(fontSize: 30),
            );
          }))
        ],
      )),
    );
  }
}
