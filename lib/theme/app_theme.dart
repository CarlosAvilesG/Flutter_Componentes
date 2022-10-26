import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,

    //AppBar theme}
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    //textbutton theme

    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: Colors.indigo,

      //AppBar theme}
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
