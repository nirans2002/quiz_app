import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz_app/database/models/qstn_model.dart';
import 'package:quiz_app/services/api.dart';

class Quiz_screen extends StatefulWidget {
  const Quiz_screen({Key? key}) : super(key: key);

  @override
  _Quiz_screenState createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  late Future<QstnModel> _qstnmodel;

  @override
  void initState() {
    _qstnmodel = ;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: FutureBuilder<QstnModel>(
          future: _qstnmodel,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return Text(snapshot.data!.question);
            }
            else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
          },
        )
      )
    );
  }
}
