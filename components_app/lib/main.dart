import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListView2Screen(),
      initialRoute: 'home',
      routes: {
        'alert': (context) => const AlertScreen(),
        'card': (context) => const CardScreen(),
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const ListView1Screen(),
        'listview2': (context) => const ListView2Screen()
      },
      onGenerateRoute: ((settings) {
        print(settings);
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      }),
    );
  }
}
