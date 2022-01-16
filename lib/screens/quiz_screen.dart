import 'package:flutter/material.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //time
            // ElevatedButton(onPressed: (), child: Text('fetche')),
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
