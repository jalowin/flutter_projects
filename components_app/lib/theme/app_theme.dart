import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static const Color primaryDark = Colors.red;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
      ),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryDark,
    appBarTheme: const AppBarTheme(
      color: primaryDark,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryDark,
      ),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primaryDark),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
