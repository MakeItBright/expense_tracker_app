import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    background: Colors.grey.shade100,
    onBackground: Colors.black,
    primary: const Color(0xFF00B2E7),
    secondary: const Color(0xFFE064F7),
    tertiary: const Color(0xFFFF8D6C),
    outline: Colors.grey,
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
);
