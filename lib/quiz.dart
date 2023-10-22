// FILE: quiz.dart

import 'package:flutter/material.dart';
import 'package:quiz_flutter/questions_screen.dart';
import 'package:quiz_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    // executes before build method
    this.activeScreen = StartScreen(switchScreen);
    super.initState(); // initialize the parent State<Quiz>
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: this.activeScreen,
        ),
      ),
    );
  }
}
