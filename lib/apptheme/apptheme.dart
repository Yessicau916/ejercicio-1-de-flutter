// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
class AppBarTheme1 {
  static final theme4 = ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 220, 155, 232),
          elevation: 10,
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          titleTextStyle: TextStyle(fontSize: 30)
        ),
        textTheme: const TextTheme(bodyMedium:TextStyle(
          color: Colors.purple)
        ),

      );

  static final theme6 = ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 220, 155, 232),
          elevation: 10,
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          titleTextStyle: TextStyle(fontSize: 30)
        ),
        textTheme: const TextTheme(bodyMedium:TextStyle(
          color: Colors.purple)
        ),

      );
      
  
}