import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width= 50;
  double height= 50;
  Color color= Colors.blue;
  BorderRadiusGeometry borde = BorderRadius.circular(20);

void changeShape(){
  final random= Random();
  width =random.nextInt(300).toDouble() +70;
  height=random.nextInt(300).toDouble() +70;
  color= Color.fromRGBO(
    random.nextInt(255), 
    random.nextInt(255), 
    random.nextInt(255), 
    1
    );
  borde= BorderRadius.circular(random.nextInt(100).toDouble()+10);
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 400),
           curve: Curves.easeOutCubic,
           width: width,
           height: height,
           decoration: BoxDecoration(
             color:color,
             borderRadius: borde,
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle, size: 35,),
        onPressed: changeShape,
      ),
    );
  }
}