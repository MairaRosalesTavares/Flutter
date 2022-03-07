import 'package:fl_components/router/app_routes.dart';
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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes. onGenerateRoute,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.indigo,

        appBarTheme: AppBarTheme(
          color: Colors.indigo,
          
        )
      ),
    );
  }
}