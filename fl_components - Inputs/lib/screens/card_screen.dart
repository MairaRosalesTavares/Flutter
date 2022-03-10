import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
        children: const [

          CustomCardType1(),
          SizedBox( height: 10,),
          CustomCardType2(
            imageUrl: ('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg')
            ,name: 'Un hermoso Paisaje' ,),
          SizedBox( height: 10,), 
          CustomCardType2(imageUrl: ('https://media.macphun.com/img/uploads/customer/blog/504/15360610675b8e6e8b52bd36.49629027.jpg?q=85&w=1680')),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: ('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg')),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: ('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg')),

        ],)
    );
  }
}

