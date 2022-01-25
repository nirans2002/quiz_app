import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quiz_app/components/option_tile.dart';
import 'package:quiz_app/components/timer_element.dart';
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

List result = [];
String current_selected_option = "w";
choose(String option) {
  String current_selected_option = option;

  return current_selected_option;
}

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
  // String current_selected_option = '';
  // List result = [];

  //timer start
  static const countdownDuration =
      Duration(minutes: 5, seconds: 0, milliseconds: 0);
  Duration duration = Duration();
  Timer? timer;
  bool countDown = true;
// timer end

  Future getData() async {
    SharedPreferences url_data_pref = await SharedPreferences.getInstance();

    String? selected_difficulty =
        url_data_pref.getString('selected_difficulty').toString().trim();
    String? selected_category =
        url_data_pref.getString('selected_category').toString().trim();
    setState(() {
      loading = true;
    });

    final responseData = await http.get(
      Uri.parse(
          'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=$selected_category&difficulty=$selected_difficulty&limit=20'),

      // 'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=linux&difficulty=easy&limit=20'
    );

    if (responseData.statusCode == 200) {
      final data = jsonDecode(responseData.body);
      // print(data);
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
    super.initState();
    getData();
    result = [];
    currentIndex = 0;
    // Question currentQuestionData = listModel[currentIndex];

    //timer start
    reset();
    startTimer();
    //timer end
  }
//timer functions start

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = countDown ? -1 : 1;
    final addMilliSeconds = countDown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      final milliseconds = duration.inMilliseconds + addMilliSeconds;
      final minutes = duration.inMinutes;
      if (milliseconds < 0) {
        // debugPrint("ended 1");

        timer?.cancel();
        // checkAnswer();
        Finish();
      } else {
        duration = Duration(milliseconds: milliseconds);
      }
    });
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

//timer functions end

  //finish function
  void Finish() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return ResultScreen(
        resultData: result,
      );
    }));
  }

  // widget buid timer start
  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String threeDigits(int n) => n.toString().padLeft(3, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final millisec = threeDigits(duration.inMilliseconds.remainder(100));

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(
        time: minutes,
      ),
      Text(
        ":",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            // color: secondaryColor,
            fontFamily: 'Ubuntu'),
      ),
      buildTimeCard(
        time: seconds,
      ),
      Text(
        ":",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            // color: secondaryColor,
            fontFamily: 'Ubuntu'),
      ),
      buildTimeCard(
        time: millisec,
      ),
    ]);
  }
// widgets timer end

  @override
  Widget build(BuildContext context) {
    //
    void incrementIndex() {
      setState(() {
        currentIndex < 19 ? currentIndex++ : Finish;
        // debugPrint(currentIndex.toString());
        Question currentQuestionData = listModel[currentIndex];
      });
    }

    Question currentQuestionData = listModel[currentIndex];
    String? optionA = currentQuestionData.answers.answerA;
    String? optionB = currentQuestionData.answers.answerB;
    String? optionC = currentQuestionData.answers.answerC;
    String? optionD = currentQuestionData.answers.answerD;
    String? optionE = currentQuestionData.answers.answerE;
    String? optionF = currentQuestionData.answers.answerF;

//check answer
    void checkAnswer() {
      // debugPrint('check called');
      // String current_selected_option = choose()

      String current_correct_answer =
          FindCorrectAnswers(currentQuestionData.correctAnswers);
      if (current_selected_option == current_correct_answer) {
        result.add(true);
      } else {
        result.add(false);
      }
      if (currentIndex < 19) {
        incrementIndex();
      } else {
        Finish();
      }
    }

    //widget screen
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: loading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    //time
                    Container(
                      height: 40,
                      child: Center(
                        child: buildTime(),
                      ),
                    ),
                    LinearProgressIndicator(
                      value: (currentIndex / 20), //controller.value,
                      semanticsLabel: 'Linear progress indicator',
                      backgroundColor: primaryColor,
                      valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
                    ),
                    //question
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              currentQuestionData.question,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              optionA != null
                                  ? optionTile(
                                      checkAnswer, 'a', context, optionA)
                                  : Container(),
                              optionB != null
                                  ? optionTile(
                                      checkAnswer, 'b', context, optionB)
                                  : Container(),
                              optionC != null
                                  ? optionTile(
                                      checkAnswer, 'c', context, optionC)
                                  : Container(),
                              optionD != null
                                  ? optionTile(
                                      checkAnswer, 'd', context, optionD)
                                  : Container(),
                              optionE != null
                                  ? optionTile(
                                      checkAnswer, 'e', context, optionE)
                                  : Container(),
                              optionF != null
                                  ? optionTile(
                                      checkAnswer, 'f', context, optionF)
                                  : Container(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          style: ButtonStyle(),
          // onPressed: currentIndex == 19 ? Finish : incrementIndex,
          onPressed: checkAnswer,
          child: Container(
              height: 50,
              child: Center(
                  child: Text(
                currentIndex == 19 ? 'Finish' : 'Next',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu'),
              ))),
        ),
      ),
    );
  }
}
