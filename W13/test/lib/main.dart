import 'package:flutter/material.dart';
import 'my_animation.dart';
import 'shape_animation.dart';

void main() {
runApp(const MyApp());
}


class MyApp extends StatelessWidget {
      const MyApp({super.key});
      @override
      Widget build(BuildContext context) {
      return MaterialApp(
          title: 'Animations Demo',
          theme: ThemeData(
          primarySwatch: Colors.blue,
          ),
        home: const ShapeAnimation(),
      );
      }
}