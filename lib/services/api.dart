// APIKEY= 0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future apicall() async {
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();

  String? selected_difficulty = url_data_pref.getString('selected_difficulty');
  String? selected_category = url_data_pref.getString('selected_category');
  http.Response response;
  response = await http.get(
    Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=$selected_category&difficulty=$selected_difficulty&limit=20'),
    headers: {"Accept": "application/json"},
  );
  if (response.statusCode == 200) {
    List questionsList;
    questionsList = jsonDecode(response.body);
    print(questionsList[0]['question']);
    print(questionsList[0]['correct_answer']);
    // print('$selected_category  $selected_difficulty');
  }
}

getValue() async {
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();

  String? selected_difficulty = url_data_pref.getString('selected_difficulty');
  String? selected_category = url_data_pref.getString('selected_category');
  print(selected_difficulty);
  print(selected_category);
}
