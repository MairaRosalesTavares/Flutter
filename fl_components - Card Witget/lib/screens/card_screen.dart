import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Card widget '),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon( Icons.title, color: AppTheme.primary ,),
                  title: Text('TITULO'),
                  subtitle: Text('Laboris anim enim aliqua incididunt id deserunt sunt laborum. Irure et velit qui fugiat ad irure laborum. Incididunt id nisi ex aute ullamco non. Sit labore aliqua ut commodo mollit non fugiat aute nulla do excepteur aliqua velit esse. Lorem veniam incididunt fugiat nostrud nostrud commodo occaecat dolore nulla enim.'),
                )]),
          )
        ],)
    );
  }
}