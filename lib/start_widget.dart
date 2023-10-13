import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key, required this.welcomeText});
  final verticalSpacer = const SizedBox(height: 50);
  final String welcomeText;

  void startQuizClicked() {}

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.deepPurple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 230,
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
            ElevatedButton(
              onPressed: startQuizClicked,
              child: const Text(
                'Start Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
