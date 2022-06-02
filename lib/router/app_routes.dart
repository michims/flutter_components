import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';



class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [

    //TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'listview1', name: 'List View tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt_rounded),
    MenuOption(route: 'listview2', name: 'List View tipo 2', screen: const ListView2Screen(), icon: Icons.view_list_rounded),
    MenuOption(route: 'Alerts - Alertas', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'Cards - Tarjetas', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to Refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),


  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen() });

    
    for(final option in menuOptions){
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }




  //esta es ota manera de trabajar las rutas, para tenrrla de referencia en caso de necesitarla
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert'    : (BuildContext context) => const AlertScreen(),
  //   'card'     : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (settings) {
        return MaterialPageRoute(
               builder: (context) => const AlertScreen()
             );
      }
  }
