import 'package:flutter/material.dart';
import 'package:quiz_app/components/category_bottom_sheet.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/theme/theme.dart';

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
      themeMode: ThemeMode.dark, // themeMode: ThemeMode.light,
      // themeMode: ThemeMode.system,
      home: const SplashScreen(),
      // TODO: redirect to splash screen
      // redirecting to HomeScreen for debugging purpose
      // home: HomeScreen(),
    );
  }
}
