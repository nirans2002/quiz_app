import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:quiz_app/database/models/qstn_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Membuat List Dari data Internet
  List<Question> listModel = [];
  List<Question> dataList = [];
  var loading = false;

  Future getData() async {
    setState(() {
      loading = true;
    });

    final responseData = await http.get(Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=linux&difficulty=easy&limit=20'));

    if (responseData.statusCode == 200) {
      final data = jsonDecode(responseData.body);
      print(data);
      for (Map<String, dynamic> i in data) {
        dataList.add(Question.fromJson(i));
      }
      setState(() {
        listModel = dataList;
        loading = false;
      });
    }
  }

  //Panggil Data / Call Data
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page List User'),
        centerTitle: true,
      ),
      body: Container(
        child: loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listModel.length,
                itemBuilder: (context, i) {
                  final nDataList = listModel[i];
                  return Container(
                    child: InkWell(
                      child: Card(
                        margin: EdgeInsets.all(15),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                nDataList.question,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.green),
                              ),
                              Text(nDataList.correctAnswer.toString(),
                                  style: TextStyle(color: Colors.blueGrey)),
                              const SizedBox(height: 10),

                              // find correct answer
                              Text(FindCorrectAnswers(nDataList.correctAnswers),
                                  style: TextStyle(color: Colors.blueGrey)),

                              //
                              const SizedBox(height: 10),
                              Text(
                                "options :",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(nDataList.answers.answerA.toString()),
                              Text(nDataList.answers.answerB.toString()),
                              Text(nDataList.answers.answerC.toString()),
                              Text(nDataList.answers.answerD.toString()),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}

String FindCorrectAnswers(CorrectAnswers correctAnswers) {
  String correct_option = '';
  debugPrint('find correct answer');
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
  debugPrint(correct_option);
  return correct_option;
}
