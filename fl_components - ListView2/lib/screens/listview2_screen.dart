
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
   final options= const ['Megaman','metal','super','fantasy'];
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Type 2'),
      ),
     body: ListView.separated(
       itemCount: options.length,
       itemBuilder:(context , index )=> ListTile(title: Text(options[index]),),
       separatorBuilder:(_ ,__) => const Divider(),
     ),
    );
  }
}