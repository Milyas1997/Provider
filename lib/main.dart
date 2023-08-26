import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/fav_provider/fav_provider.dart';
import 'package:provintro/provider/favourite_provider.dart';
import 'package:provintro/provider/slider_provider.dart';
import 'provider/counter_provider.dart';
import 'screen/fav_screen/home_screen.dart';

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
        ChangeNotifierProvider(create: (_) => FavProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeListScreen(),
      ),
    );
  }
}
