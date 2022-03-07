import 'package:fl_components/models/menu_option.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute= 'home';

  static final menuOptions = <MenuOption>[
    
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
      
      MenuOption(
      route: 'Input',  
      name: 'Text Inputs', 
      screen: const InputScreen(), 
      icon: Icons.input),
     
      MenuOption(
      route: 'Slider and checks',  
      name: 'SliderScreen', 
      screen: const SliderScreen(), 
      icon: Icons.slideshow),
      
      MenuOption(
      route: 'Listviewbuilder',  
      name: 'InfiniteScrol & pull to refresh', 
      screen: const ListViewBuilderScreen(), 
      icon: Icons.build_circle_rounded),
  ];

  static Map< String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function (BuildContext)> appRoutes= {};
    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});

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