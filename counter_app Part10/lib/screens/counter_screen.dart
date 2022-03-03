import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();

 
}

class _CounterScreenState extends State<CounterScreen> {
  int counter= 15;
  @override
  Widget build(BuildContext context) {

    
    const fontSize30= TextStyle(fontSize: 30);
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen', style: TextStyle(fontSize: 30),),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children:  [
              const Text('Clicks counter', style: fontSize30, ),
              Text( '$counter' , style: fontSize30,),
            ],
          ),
      ) ,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
         
         
         counter++;
         setState(() {
           
         });//redibujar un cambio
          },
          ),
    );
  }
}