import 'package:rflutter_alert/rflutter_alert.dart';

import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Questions> _questionBank = [
    Questions(
        'In an emergency, you can use any frequency and radio equipment available.',
        true),
    Questions('The first level of HAM licenses is a Technican licence.', true),
    Questions(
        'You only have to identify with you call sign at the beginning and end of a conversation.',
        false),
    Questions(
        'As a Technican HAM radio operator you can talk with the International Space Station.',
        true),
    Questions(
        'Modulation refers to when two radio operators are transmitting on the same frequency at the same time.',
        false),
    Questions('A handheld radio is often referred to as an HT.', true),
    Questions('It is required to know morse code (CW) to get your HAM license.',
        false),
  ];

  void nextQuestion(context) {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      Alert(
              context: context,
              title: "Well done!",
              desc: "You have completed the quiz.")
          .show();
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
