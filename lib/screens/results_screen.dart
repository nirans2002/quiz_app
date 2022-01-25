import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
// import 'package:quiz_app/database/data_sample.dart';
import 'package:quiz_app/theme/theme.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({Key? key, required this.resultData}) : super(key: key);
  final List resultData;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

List resultData = result;

class _ResultScreenState extends State<ResultScreen> {
  // List result = [];
  @override
  initState() {
    super.initState();
    // result = resultData;
    // debugPrint(resultData.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: scaffoldBackgroundColor,
          centerTitle: true,
          elevation: 5,
          title: Text(
            "RESULT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: resultData.length == 0
              ? Center(
                  child: Text(
                    "   ERROR DATA NOT FOUND  CONTACT \n   DEVELOPER FOR MORE DETAILS ",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : Column(
                  children: [
                    // Container(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         'You have scored:',
                    //         style: TextStyle(
                    //           fontSize: 25,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      child: SingleChildScrollView(
                        child: GridView.count(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          children: List.generate(resultData.length, (index) {
                            return Center(
                              child: Result_tile(index, resultData[index]),
                            );
                          }),
                        ),
                      ),
                    ),
                    // Container(
                    //   child: RaisedButton(
                    //     onPressed: () {},
                    //     child: Text("Go to Home"),
                    //   ),
                    // )
                  ],
                ),
        ));
  }

  SizedBox Result_tile(int index, bool correct) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Container(
        decoration: BoxDecoration(
          color: correct ? Colors.green.shade700 : Colors.red.shade700,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '${index + 1}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
