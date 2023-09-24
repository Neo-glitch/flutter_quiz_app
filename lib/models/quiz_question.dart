class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text; // questions
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // creates copy of answers list and shuffle
    var shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
