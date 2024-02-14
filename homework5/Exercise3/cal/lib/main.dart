import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: app(),
    );
  }
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<StatefulWidget> createState() => _appui();
}

class _appUi extends State<app> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Calculator'),
      ),
      body: Row(),
    );
  }
}
