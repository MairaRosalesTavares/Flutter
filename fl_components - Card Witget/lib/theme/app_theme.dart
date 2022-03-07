import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 7, 255, 160);
  static final ThemeData lighTheme = ThemeData.light().copyWith(

    primaryColor: Colors.blueGrey,

    appBarTheme: const AppBarTheme(
      color:  primary,
      elevation: 0
    ),
  );

}