import 'package:flutter/material.dart';
import 'profile_screen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreecn(),
    );
  }
}
void main() => runApp(MyApp());
