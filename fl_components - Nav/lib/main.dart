import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listView1': ( BuildContext context) => const ListView1Screen(),
        'listView2': ( BuildContext context) => const ListView2Screen(),
        'card'     : ( BuildContext context) => const CardScreen(),
        'alert'    : ( BuildContext context) => const AlertScreen(),
      },
      onGenerateRoute: (settings){
        return MaterialPageRoute(
        builder: (context)=> const AlertScreen(),
        );
      },
    );
  }
}