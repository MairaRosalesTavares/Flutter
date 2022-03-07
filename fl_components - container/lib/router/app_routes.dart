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
      route: 'ListView2',  
      name: 'List tipo 2', 
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
      icon: Icons.warning),
      
      MenuOption(
      route: 'Avatar',  
      name: 'AvatarScreen', 
      screen: const AvatarScreen(), 
      icon: Icons.supervised_user_circle),

      MenuOption(
      route: 'Animated',  
      name: 'AnimatedScreen', 
      screen: const AnimatedScreen(), 
      icon: Icons.animation),
  ];

  static Map< String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function (BuildContext)> appRoutes= {};

    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});

    }
    
    return appRoutes;
  }

      static Route<dynamic> onGenerateRoute( RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }
}