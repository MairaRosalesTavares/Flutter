
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.title, color: AppTheme.primary ,),
            title: Text('TITULO'),
            subtitle: Text('Laboris anim enim aliqua incididunt id deserunt sunt laborum. Irure et velit qui fugiat ad irure laborum. Incididunt id nisi ex aute ullamco non. Sit labore aliqua ut commodo mollit non fugiat aute nulla do excepteur aliqua velit esse. Lorem veniam incididunt fugiat nostrud nostrud commodo occaecat dolore nulla enim.'),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(onPressed: (){}, 
              child: const Text('OK'),),
              TextButton(onPressed: (){}, 
              child: const Text('Cancel'))
            ],
            ),
          )
          ]
          ),
    );
  }
}