import 'package:flutter/material.dart';
import 'package:quiz_app/theme/theme.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
          child: Column(
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
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: List.generate(20, (index) {
                    return Center(
                      child: Result_tile(index, true),
                    );
                  }),
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
