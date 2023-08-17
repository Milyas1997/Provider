import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/provider/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double myval = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('build is called');
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
                activeColor: Colors.green,
                inactiveColor: Colors.red,
                min: 0,
                max: 1,
                value: myval,
                onChanged: (val) {
                  value.increment(val);
                  myval = val;
                  debugPrint(val.toString());
                });
          }),
          const SizedBox(
            height: 20,
          ),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.value),
                    child: const Center(
                      child: Text('Container One'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value.value),
                    child: const Center(
                      child: Text('Container One'),
                    ),
                  ),
                )
              ],
            );
          })
        ],
      )),
    );
  }
}
