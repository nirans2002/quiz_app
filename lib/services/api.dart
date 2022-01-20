// APIKEY= 0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future fetchData(List<QstnModel> questionsList) async {
  // List<QstnModel> questionsList = [];
  // String data = '';
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();

  String? selected_difficulty =
      url_data_pref.getString('selected_difficulty').toString().trim();
  String? selected_category =
      url_data_pref.getString('selected_category').toString().trim();

  http.Response response;
  response = await http.get(
    Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=linux&difficulty=easy&limit=20'),
    headers: {"Accept": "application/json"},
    // Uri.parse(
    //     'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=$selected_category&difficulty=$selected_difficulty&limit=20'),
    // headers: {"Accept": "application/json"},
  );
  print(response.statusCode);
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    print(response.body);
    for (var data in jsonResponse) {
      questionsList.add(new QstnModel(
        id: data['id'],
        // answers: data['answers'],
        category: data['category'],
        correctanswer: data['correct_answer'],
        correctanswers: data['correct_answers'],
        description: data['description'],
        difficulty: data['difficulty'],
        explanation: data['explanation'],
        multiple_correct_answers: data['multiple_correct_answers'],
        question: data['question'],
        tags: data['tags'],
        tip: data['tip'],
      ));
    }
  }

  // questionsList = jsonDecode(response.body)

  // print(questionsList[0]['question']);
  // print(questionsList[0]['correct_answer']);
  // print('$selected_category  $selected_difficulty');
// }

// List<QstnModel> jsonProccess(response) {
//   var jsonResponse = json.decode(response);
//   List<QstnModel> questionsList = [];

//   for (var data in jsonResponse) {
//     questionsList.add(new QstnModel(
//       id: data['id'],
//       answers: data['answers'],
//       category: data['category'],
//       correctanswer: data['correct_answer'],
//       correctanswers: data['correct_answers'],
//       description: data['description'],
//       difficulty: data['difficulty'],
//       explanation: data['explanation'],
//       multiple_correct_answers: data['multiple_correct_answers'],
//       question: data['question'],
//       tags: data['tags'],
//       tip: data['tip'],
//     ));
//   }
//   return questionsList;
}

call_api(qp_list) {
  fetchData(qp_list);
}
