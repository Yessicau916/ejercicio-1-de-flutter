import 'package:drawer/menu.dart';
import 'package:flutter/material.dart';
import 'apptheme/apptheme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: AppBarTheme1.theme6,
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Menu(),
        
      );
    
  }
}
