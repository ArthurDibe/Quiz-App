import 'package:flutter/material.dart';
import 'package:quiz_flutter/models/answer_button.dart';
import 'package:quiz_flutter/data/questions.dart';
import 'package:quiz_flutter/models/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  QuizQuestion currentQuestion = questions[0];
  int questionNumber = 0;

  void changeQuestion() {
    setState(() {
      questionNumber++;
      currentQuestion = questions[questionNumber];
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ...currentQuestion.answers.map((answerOption) {
            return AnswerButton(text: answerOption, onTap: changeQuestion);
          }),
        ],
      ),
    );
  }
}
