class QstnModel {
  int id;
  String question;
  String description;
  Answers answers;
  String multiple_correct_answers;
  CorrectAnswers correctanswers;
  String correctanswer;
  String explanation;
  String tip;
  List<Tags> tags;
  String category;
  String difficulty;

  QstnModel({
    required this.id,
    required this.question,
    required this.description,
    required this.multiple_correct_answers,
    required this.correctanswers,
    required this.explanation,
    required this.tip,
    required this.category,
    required this.difficulty,
    required this.answers,
    required this.correctanswer,
    required this.tags,
  });

  factory QstnModel.fromJson(Map<String, dynamic> json) {
    return QstnModel(
      id: json['id'],
      question: json['question'],
      description: json['description'],
      multiple_correct_answers: json['multiple_correct_answers'],
      correctanswers: json['correct_answers'],
      explanation: json['explanation'],
      tip: json['tip'],
      category: json['category'],
      difficulty: json['difficulty'],
      answers: json['answers'],
      correctanswer: json['correct_answer'],
      tags: json['tags'],
    );
  }
}

class Answers {
  String answerA;
  String answerB;
  String answerC;
  String answerD;
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

  factory Answers.fromJson(Map<String, dynamic> json) {
    return Answers(
      answerA: json['answer_a'],
      answerB: json['answer_b'],
      answerC: json['answer_c'],
      answerD: json['answer_d'],
      answerE: json['answer_e'],
      answerF: json['answer_f'],
    );
  }
}

class CorrectAnswers {
  String answerACorrect;
  String answerBCorrect;
  String answerCCorrect;
  String answerDCorrect;
  String answerECorrect;
  String answerFCorrect;

  CorrectAnswers({
    required this.answerACorrect,
    required this.answerBCorrect,
    required this.answerCCorrect,
    required this.answerDCorrect,
    required this.answerECorrect,
    required this.answerFCorrect,
  });
  factory CorrectAnswers.fromJson(Map<String, dynamic> json) {
    return CorrectAnswers(
      answerACorrect: json['answer_a_correct'],
      answerBCorrect: json['answer_b_correct'],
      answerCCorrect: json['answer_c_correct'],
      answerDCorrect: json['answer_d_correct'],
      answerECorrect: json['answer_e_correct'],
      answerFCorrect: json['answer_f_correct'],
    );
  }
}

class Tags {
  final String name;
  Tags({required this.name});
  factory Tags.fromJson(Map<String, dynamic> json) {
    return Tags(name: json['name']);
  }
}
