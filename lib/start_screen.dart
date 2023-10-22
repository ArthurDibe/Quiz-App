// FILE: start_screen.dart

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  final verticalSpacer = const SizedBox(height: 50);
  final String welcomeText = 'Learn Flutter the fun way!';

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 230,
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
          verticalSpacer,
          Text(
            welcomeText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          verticalSpacer,
          ElevatedButton.icon(
            onPressed: this.startQuiz,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            icon: const Icon(Icons.arrow_right_alt_sharp),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
