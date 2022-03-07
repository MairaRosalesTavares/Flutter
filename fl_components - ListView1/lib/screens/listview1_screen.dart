
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Type 1'),
      ),
     body: ListView(
       children: const [
          Text('hola mundo'),
          Text('hola mundo'),
          Text('hola mundo'),    
       ],
     ),
    );
  }
}