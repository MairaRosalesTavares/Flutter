import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.white,
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: const  [
              Text('Clicks counter'),
              Text('5'),
            ],
          ),
      ) ,
      
    );
  }

}