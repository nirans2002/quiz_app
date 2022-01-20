import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Quiz_screen extends StatefulWidget {
  const Quiz_screen({Key? key}) : super(key: key);

  @override
  _Quiz_screenState createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    // _fetchData();
  }

  @override
  // List qp_list = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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

            ElevatedButton(onPressed: call_api(qp_list), child: Text('fetch')),
            // progress bar

            LinearProgressIndicator(
              value: 0.1, //controller.value,
              semanticsLabel: 'Linear progress indicator',
              backgroundColor: primaryColor,
              valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
            ),
            //question
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'What is the capital of India?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ),
            ),
            Text('fasdfsadf'),

            //options
            // option_tile(context),
          ],
        ),
      ),
    );
  }
}

// call_api(qp_list) {
//   fetchData(qp_list);
// }
