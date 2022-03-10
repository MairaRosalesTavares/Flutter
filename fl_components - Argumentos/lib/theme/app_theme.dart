import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 209, 159, 136);
  static final ThemeData lighTheme = ThemeData.light().copyWith(

    //Color primario
    primaryColor: Color.fromARGB(255, 136, 187, 211),

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color:  primary,
      elevation: 0
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData( 
      style: TextButton.styleFrom(primary: Color.fromARGB(255, 23, 24, 24))),

  );

}