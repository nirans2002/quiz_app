import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const APIKEY = '0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p';

Future fetchData(listModel) async {
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();

  String? selected_difficulty =
      url_data_pref.getString('selected_difficulty').toString().trim();
  String? selected_category =
      url_data_pref.getString('selected_category').toString().trim();
  List<Question> dataList = [];

  http.Response response;
  response = await http.get(
    Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=linux&difficulty=easy&limit=20'),
    headers: {"Accept": "application/json"},
    // Uri.parse(
    //     'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=$selected_category&difficulty=$selected_difficulty&limit=20'),
    // headers: {"Accept": "application/json"},
  );
  // print(response.statusCode);
  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    for (Map<String, dynamic> i in data) {
      dataList.add(Question.fromJson(i));
    }
    listModel = dataList;
  }
}

String FindCorrectAnswers(CorrectAnswers correctAnswers) {
  String correct_option = '';
  // debugPrint('find correct answer');
  // debugPrint(correctAnswers.answer_a_correct);
  if (correctAnswers.answer_a_correct == "true") {
    correct_option = 'a';
  } else if (correctAnswers.answer_b_correct == "true") {
    correct_option = 'b';
  } else if (correctAnswers.answer_c_correct == "true") {
    correct_option = 'c';
  } else if (correctAnswers.answer_d_correct == "true") {
    correct_option = 'd';
  } else if (correctAnswers.answer_e_correct == "true") {
    correct_option = 'e';
  } else if (correctAnswers.answer_f_correct == "true") {
    correct_option = 'f';
  }
  // debugPrint(correct_option);
  return correct_option;
}
