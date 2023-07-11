import 'package:flutter/material.dart';

ThemeData tema() {
  return ThemeData(
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.black, shadowColor: null),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)));
}
