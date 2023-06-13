import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade900),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: Colors.grey[900]!,
      secondary: Colors.grey[800]!,
    ),
  );

  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade200,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.grey[300]!,
      secondary: Colors.grey[500]!,
    ),
  );
}
