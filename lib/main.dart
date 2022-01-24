import 'package:flutter/material.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/services/api_try.dart';
import 'screens/quiz_screen.dart';
import 'theme/theme.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.light,
      // themeMode: ThemeMode.system,
      home: Quiz_screen(),
    );
  }
}
