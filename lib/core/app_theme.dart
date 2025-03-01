import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: Color(0xff268c8c),
      onSurface: Color(0xff313037),
      primary: Color(0xffFF6F2E),
      secondary: Color(0xffffd288),
      onPrimaryContainer: Color(0xffe5fdfe),
      primaryContainer: Color(0xffb2f3df),
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xffe5fdfe),
        )),
    inputDecorationTheme:const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xffe5fdfe),
        border: OutlineInputBorder(),));

var darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: Color(0xff313037),
      onSurface: Color(0xffe5fdfe),
      primary: Color(0xffFF6F2E),
      secondary: Color(0xffffd288),
      primaryContainer: Color(0xffb2f3df),
    ));
