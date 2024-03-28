import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShapeAnimation extends StatefulWidget{
  const ShapeAnimation ({super.key});
  
  @override
  State<ShapeAnimation> createState() => _ShapeAnimationState();

}

class  _ShapeAnimationState extends State<ShapeAnimation> 
    with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> animation;
  // double pos = 0;
  double posTop = 0;
  double posLeft = 0;

  double maxTop = 0;
  double maxLeft = 0;
  final int ballsize = 100;
  
  late Animation<double> animationTop;
  late Animation<double> animationLeft; 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Controller"),
        actions: [
          IconButton(onPressed: (){
            controller.reset();
            controller.forward();
          },
           icon: const Icon(Icons.run_circle))
        ],
      ),
      body: SafeArea(child:  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          maxLeft = constraints.maxWidth - ballsize;
          maxTop = constraints.maxHeight - ballsize;
          return Stack(
              children: [
                Positioned(left: posLeft, top: posTop,child: const Ball(),)
              ],
           );
        },
      ),
        
      
      )
    );
  }

  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      duration:  const Duration(seconds: 3),
      vsync: this,
      );

      animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);

      // animation = Tween<double>(begin:0, end: 200).animate(controller)
      // ..addListener(() {
      //   moveBall();
      //  });
      animationLeft = Tween<double> (begin: 0,end: 150).animate(controller);
      animationTop = Tween<double> (begin: 0,end: 300).animate(controller)
      ..addListener(() {
        moveBall();
      });
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  void moveBall(){
    setState(() {
      // posTop = animationTop.value;
      // posLeft = animationLeft.value;

      posTop = animation.value * maxTop;
      posLeft = animation.value * maxLeft;
    });
  }
}


class Ball extends StatelessWidget{
    const Ball({super.key});
    
    @override
    Widget build(BuildContext context){
      return Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(color: Colors.orange,shape: BoxShape.circle),
      );
    }
}