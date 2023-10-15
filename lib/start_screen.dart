import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.welcomeText});
  final verticalSpacer = const SizedBox(height: 50);
  final String welcomeText;

  void startQuizClicked() {}

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
            onPressed: startQuizClicked,
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