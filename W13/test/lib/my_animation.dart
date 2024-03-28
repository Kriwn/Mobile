import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAnimation extends StatefulWidget {
    const MyAnimation({super.key});
    @override
    State<MyAnimation> createState() => _MyAnimationState();  
}


class _MyAnimationState extends State<MyAnimation> {

  final List<double> sizes = [100,125,150,175,200];
  final List<double> tops = [0,50,100,150,200];

  final List<Color> colors = const [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.orange
  ];
  int iteration = 0;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
            appBar: AppBar(
            title: const Text('Animated Container'),
            actions: [
              IconButton(onPressed: (){
                setState(() {
                  iteration = (iteration + 1) % colors.length;
                });
              }, 
              
              icon: const Icon(Icons.run_circle))
            ]

            ),
            body:  Center(
              child: AnimatedContainer(
                width: sizes[iteration],
                height: sizes[iteration],
                margin: EdgeInsets.only(top: tops[iteration]),
                duration: const Duration(seconds: 1),
                color: colors[iteration],
              ),
            )
            );
       }
}



