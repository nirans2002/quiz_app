import 'package:flutter/material.dart';

class Quiz_screen extends StatefulWidget {
  const Quiz_screen({Key? key}) : super(key: key);

  @override
  _Quiz_screenState createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('quiz screen')));
  }
}
