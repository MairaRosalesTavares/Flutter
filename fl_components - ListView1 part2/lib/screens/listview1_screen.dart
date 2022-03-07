
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
   final options= const ['Megaman','metal','super','fantasy'];
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Type 1'),
      ),
     body: ListView(
       children:  [
         ...options.map(
           (game) => ListTile(title: Text(game),
           trailing: const Icon(Icons.arrow_forward_ios_outlined),
           )
           ).toList()
         // ListTile(
         //   leading: Icon(Icons.access_time_sharp),
         //   title: Text('Hola mundo'),),  
       ],
     ),
    );
  }
}