import 'package:fl_components/models/menu_option.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute= 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',  
      name: 'homeScreen', 
      screen: const HomeScreen(), 
      icon: Icons.home),

      MenuOption(
      route: 'ListView1',  
      name: 'List tipo 1', 
      screen: const ListView1Screen(), 
      icon: Icons.list),

      MenuOption(
      route: 'ListView1',  
      name: 'List tipo 1', 
      screen: const ListView2Screen(), 
      icon: Icons.list),

      MenuOption(
      route: 'Card',  
      name: 'cardScreen', 
      screen: const CardScreen(), 
      icon: Icons.card_giftcard),

      MenuOption(
      route: 'Alert',  
      name: 'AlertScreen', 
      screen: const AlertScreen(), 
      icon: Icons.alarm),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listView1': ( BuildContext context) => const ListView1Screen(),
        'listView2': ( BuildContext context) => const ListView2Screen(),
        'card'     : ( BuildContext context) => const CardScreen(),
        'alert'    : ( BuildContext context) => const AlertScreen(),
      };

      static Route<dynamic> onGenerateRoute( RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }
}