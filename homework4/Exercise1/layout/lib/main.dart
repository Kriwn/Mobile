import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Layout",
        style: TextStyle(fontWeight: FontWeight.bold,),),backgroundColor: const Color.fromRGBO(144, 238, 144, 1),
      ),
      body:Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: double.maxFinite,
          decoration: const BoxDecoration(color:Color.fromRGBO(135, 131, 126, 0.7)),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 20),),
                Text("10:39",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20)),
                Text("4 Jan 2024")
              ],
            )
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'layout'),
    );
  }
}

void main() => runApp(MyApp());
