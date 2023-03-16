import 'package:flutter/material.dart';
import 'package:kbc_app/home%20page/final_screen.dart';
import 'package:kbc_app/home%20page/home_screen.dart';
import 'package:kbc_app/home%20page/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => startScreen(),
        "homeScreen": (context) => homeScreen(),
        "finalScreen": (context) => finalScreen(),
      },
    ),
  );
}
