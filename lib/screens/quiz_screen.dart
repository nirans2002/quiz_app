import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
import 'package:http/http.dart' as http;

class Quiz_screen extends StatefulWidget {
  const Quiz_screen({Key? key}) : super(key: key);

  @override
  _Quiz_screenState createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  //
  List<Question> listModel = [];
  List<Question> dataList = [];
  int currentIndex = 0;
  var loading = false;
  dynamic currentQuestionData;

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
        currentIndex = 0;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    currentIndex = 0;
    // Question currentQuestionData = listModel[currentIndex];
  }

  //

  @override
  Widget build(BuildContext context) {
    //
    void incrementIndex() {
      setState(() {
        currentIndex++;
        debugPrint(currentIndex.toString());
        Question currentQuestionData = listModel[currentIndex];
      });
    }

    Question currentQuestionData = listModel[currentIndex];

    void Finish() {}
    //
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: loading
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        //time
                        Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              '05:23:64',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        LinearProgressIndicator(
                          value: 0.2, //controller.value,
                          semanticsLabel: 'Linear progress indicator',
                          backgroundColor: primaryColor,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(secondaryColor),
                        ),
                        //question
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              currentQuestionData.question,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(),
                onPressed: currentIndex == 20 ? Finish : incrementIndex,
                child: Container(
                    height: 50,
                    child: Center(
                        child: Text(
                      currentIndex == 20 ? 'Finish' : 'Next',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu'),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ListView.builder(
//                     itemCount: listModel.length,
//                     itemBuilder: (context, i) {
//                       final nDataList = listModel[i];
//                       return Container(
//                         child: InkWell(
//                           child: Card(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   nDataList.question,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                       color: Colors.green),
//                                 ),
//                                 Text(nDataList.correctAnswer.toString(),
//                                     style: TextStyle(color: Colors.blueGrey)),
//                                 const SizedBox(height: 5),

//                                 // find correct answer
//                                 Text(
//                                     FindCorrectAnswers(
//                                         nDataList.correctAnswers),
//                                     style: TextStyle(color: Colors.blueGrey)),

//                                 //
//                                 const SizedBox(height: 5),
//                                 Text(
//                                   "options :",
//                                   style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(nDataList.answers.answerA.toString()),
//                                 Text(nDataList.answers.answerB.toString()),
//                                 Text(nDataList.answers.answerC.toString()),
//                                 Text(nDataList.answers.answerD.toString()),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     })

