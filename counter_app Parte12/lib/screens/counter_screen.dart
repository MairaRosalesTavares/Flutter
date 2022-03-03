import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();

 
}

class _CounterScreenState extends State<CounterScreen> {
  int counter= 0;
void increase(){
  counter++;
  setState(() { });
}
void reload(){
  counter=0;
  setState(() { });
}
void decrease(){
  counter--;
  setState(() { });
}

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  
      
      CustomFloatinActions(increaseFn: increase, decreaseFn: decrease, reload: reload,),
    );
  }
}

class CustomFloatinActions extends StatelessWidget {

  final Function increaseFn;
  final Function reload;
  final Function decreaseFn;
  const CustomFloatinActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.reload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        
        
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(), //()=> setState(() => counter++),
            ),
            
            
            
        FloatingActionButton(
          child: const Icon(Icons.replay_outlined),
          onPressed:() => reload(),// ()=> setState(() => counter=0),
            ),
            
        
            
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: ()=> decreaseFn(), //()=> setState(() => counter--),
            ),

      ],
    );
  }
}