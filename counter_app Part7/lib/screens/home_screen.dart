import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var fontSize30= const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen', style: TextStyle(fontSize: 30),),
        elevation: 10.0,
      ),
      backgroundColor: Colors.white,
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children:  [
              Text('Clicks counter', style: fontSize30, ),
              Text('5', style: fontSize30,),
            ],
          ),
      ) ,
      
    );
  }

}