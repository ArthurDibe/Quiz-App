class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(this.answers); // create a copy of answers list
    shuffledList.shuffle(); // shuffle the copy of the answers list

    return shuffledList; // return the shuffled copy
  }
}
