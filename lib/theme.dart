import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData blueTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.blue[500],
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18, color: Colors.white)),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
  );

  static final ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.red[500],
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18, color: Colors.white)),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.red),
  );

  static final ThemeData greenTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.green[500],
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18, color: Colors.white)),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.green),
  );
}
