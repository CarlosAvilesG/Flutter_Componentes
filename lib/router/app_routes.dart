import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // todo: borrar home

    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_rounded,
      name: 'Listview Tipo 1',
      screen: const listview1Screen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.line_style_rounded,
      name: 'Listview Tipo 2',
      screen: const listView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_rounded,
      name: 'Alerta',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_membership_outlined,
      name: 'card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_outline_outlined,
      name: 'Animated Conteiner',
      screen: const AnimatedScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const listview1Screen(),
  //   'listview2': (context) => const listview2Screen(),
  //   'card': (context) => const CardScreen(),
  //   'alert': (context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
