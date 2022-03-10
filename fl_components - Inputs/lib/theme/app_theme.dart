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
      style: TextButton.styleFrom(primary: Color.fromARGB(255, 23, 24, 24))
      
      ),
  
   
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary 
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom( primary: Color.fromARGB(255, 0, 0, 0) 
      ,shape: const StadiumBorder(), elevation:10),
    ),
    
    inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
    )

  )
  );
 
}