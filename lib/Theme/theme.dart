import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade400,
    tertiary: Colors.black,
    inversePrimary: Colors.white,
  ),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: Colors.white,
  ),
);
