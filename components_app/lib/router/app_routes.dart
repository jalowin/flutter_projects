import 'package:flutter/material.dart';

import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar home
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: "Home Screen",
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: "List View 1",
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: "List View 2",
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.alarm,
        name: "Alert",
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: "Card",
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: "Avatar",
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle,
        name: "Animated",
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: "Text Inputs",
        screen: const InputsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
