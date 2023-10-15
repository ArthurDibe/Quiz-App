import 'package:flutter/material.dart';
import 'package:quiz_flutter/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const StartScreen(welcomeText: 'Learn Flutter the fun way!'),
        ),
      ),
    ),
  );
}
