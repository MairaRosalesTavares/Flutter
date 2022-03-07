
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
   final options= const ['Megaman','metal','super','fantasy'];
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Type 2'),
        backgroundColor: Colors.blueGrey,
      ),
     body: ListView.separated(
       itemCount: options.length,
       itemBuilder:(context , index )=> ListTile(title: Text(options[index]),
       trailing: const Icon(Icons.arrow_forward_ios_outlined, Colors.grey),
       onTap: (){
         final game = options[index];
         print(game);
       },),
       
       separatorBuilder:(_ ,__) => const Divider(),
     ),
    );
  }
}