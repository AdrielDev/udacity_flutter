import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      primaryColor: Color(0xFF612F74),
      accentColor: Colors.white,
      scaffoldBackgroundColor: Color(0xFF612F74),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          color: Colors.purple,
          fontWeight: FontWeight.normal,
        ),
        headline2: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[700],
        ),
        subtitle1: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
      ),
    );
  }
}
