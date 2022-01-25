import 'dart:convert';

List<Question> modelUserFromJson(String str) =>
    List<Question>.from(json.decode(str).map((x) => Question.fromJson(x)));

String modelUserToJson(List<Question> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Question {
  String question;
  Answers answers;
  CorrectAnswers correctAnswers;
  String? correctAnswer;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.correctAnswers,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        question: json["question"],
        answers: Answers.fromJson(json["answers"]),
        correctAnswers: CorrectAnswers.fromJson(json["correct_answers"]),
        correctAnswer: json["correct_answer"],
      );

  Map<String, dynamic> toJson() => {
        "question": question,
        "answers": answers.toJson(),
        "correctAnswer": correctAnswer,
      };
}

class Answers {
  String? answerA;
  String? answerB;
  String? answerC;
  String? answerD;
  String? answerE;
  String? answerF;

  Answers({
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.answerE,
    required this.answerF,
  });

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
        answerA: json["answer_a"],
        answerB: json["answer_b"],
        answerC: json["answer_c"],
        answerD: json["answer_d"],
        answerE: json["answer_e"],
        answerF: json["answer_f"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a": answerA,
        "answer_b": answerB,
        "answer_c": answerC,
        "answer_d": answerD,
        "answer_e": answerE,
        "answer_f": answerF,
      };
}

class CorrectAnswers {
  String answer_a_correct;
  String answer_b_correct;
  String answer_c_correct;
  String answer_d_correct;
  String answer_e_correct;
  String answer_f_correct;

  CorrectAnswers({
    required this.answer_a_correct,
    required this.answer_b_correct,
    required this.answer_c_correct,
    required this.answer_d_correct,
    required this.answer_e_correct,
    required this.answer_f_correct,
  });

  factory CorrectAnswers.fromJson(Map<String, dynamic> json) => CorrectAnswers(
        answer_a_correct: json["answer_a_correct"],
        answer_b_correct: json["answer_b_correct"],
        answer_c_correct: json["answer_c_correct"],
        answer_d_correct: json["answer_d_correct"],
        answer_e_correct: json["answer_e_correct"],
        answer_f_correct: json["answer_f_correct"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a_correct": answer_a_correct,
        "answer_b_correct": answer_b_correct,
        "answer_c_correct": answer_c_correct,
        "answer_d_correct": answer_d_correct,
        "answer_e_correct": answer_e_correct,
        "answer_f_correct": answer_f_correct,
      };
}
