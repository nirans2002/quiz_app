// APIKEY= 0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future apicall() async {
    List questionsList;

  SharedPreferences url_data_pref = await SharedPreferences.getInstance();

  String? selected_difficulty =
      url_data_pref.getString('selected_difficulty').toString().trim();
  String? selected_category =
      url_data_pref.getString('selected_category').toString().trim();

  http.Response response;
  response = await http.get(
    Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=$selected_category&difficulty=$selected_difficulty&limit=20'),
    headers: {"Accept": "application/json"},
  );
  print(response.statusCode);
  if (response.statusCode == 200) {
    questionsList = jsonDecode(response.body);

   
}
    // return questionsList;
    // print(questionsList[0]['question']);
    // print(questionsList[0]['correct_answer']);
    // print('$selected_category  $selected_difficulty');
  } 



