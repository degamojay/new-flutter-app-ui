import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0XFF00254E),
      primary: const Color(0XFF00254E),
      secondary: const Color(0XFF5D83B1),
      tertiary: const Color(0XFF94A4AB),
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(
      color: Color(0XFF94A4AB),
      size: 20.0,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0XFF5D83B1),
    ),
    appBarTheme: const AppBarTheme(
      color: Color(0XFF00254E),
      iconTheme: IconThemeData( 
        color: Color(0XFF94A4AB), 
      ),
      titleTextStyle: TextStyle(
        color: Color(0XFF94A4AB),
        fontSize: 20.0,
      ),
    ),
  );
}
