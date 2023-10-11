import 'package:flutter/material.dart';
import 'package:quiz_flutter/start_widget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartWidget(welcomeText: 'Learn Flutter the fun way!'),
      ),
    ),
  );
}
