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
  // List<Tags> tags;
  String category;
  String difficulty;

  QstnModel({
    required this.id,
    required this.question,
    required this.description,
    required this.multiple_correct_answers,
    required this.correctanswer,
    required this.explanation,
    required this.tip,
    required this.category,
    required this.difficulty,
    // this.tags,
  });

  factory QstnModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    description = json['description'];
    multiple_correct_answers = json['multiple_correct_answers'];
    correctanswer = json['correct_answer'];
    explanation = json['explanation'];
    tip = json['tip'];
    category = json['category'];
    difficulty = json['difficulty'];
    //TODO: answers,tags,correct answers
  }
}

class Answers {
  String answerA;
  String answerB;
  String answerC;
  String answerD;
  Null answerE;
  Null answerF;

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
