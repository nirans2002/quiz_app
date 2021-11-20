import 'package:flutter/material.dart';
import 'package:quiz_app/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              color: secondaryColor,
              width: 300,
              child: Text("data"),
            ),
            Container(
              color: cardColor,
              width: 300,
              child: Text("data"),
            ),
          ],
        )));
  }
}
