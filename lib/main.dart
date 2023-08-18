import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/provider/favourite_provider.dart';
import 'package:provintro/provider/slider_provider.dart';
import 'package:provintro/screen/exampletwo_screen.dart';
import 'provider/counter_provider.dart';
import 'screen/counter_screen.dart';
import 'screen/listtile_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider(),
        ),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavourateProvder()),
      ],
      child: const MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
