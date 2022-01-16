import 'package:flutter/material.dart';
import 'package:quiz_app/components/logo.dart';
import 'package:quiz_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gohome();
    super.initState();
  }

  Future<void> gohome() async {
    // navigates to the home page after provided time of 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
        // builder: (context) => ResultScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: logo(),
          // child: Text("splash screen"),
          //TODO: add logo
        ),
      ),
    );
  }
}


