import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: const Text('componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon( Icons.access_time),
          title: const Text('nombre de ruta'),
          onTap: (){

          },
        ),
        separatorBuilder: (_, __)=> const Divider(),
        itemCount: 100
      )
    );
  }
}