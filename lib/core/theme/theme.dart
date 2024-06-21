import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    canvasColor: const Color(0xFFFEF06E),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Colors.black)
    )
  );
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    canvasColor: const Color(0x91D9D9D9),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Colors.grey)
    ),
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Colors.grey
    // )
  );
}