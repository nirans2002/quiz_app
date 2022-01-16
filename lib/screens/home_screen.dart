
import 'package:flutter/material.dart';
import 'package:quiz_app/components/category_bottom_sheet.dart';
import 'package:quiz_app/components/logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(flex: 1),
              SizedBox(
                child: Center(
                  child: logo(),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                child: Text(
                  " Test your knowledge with our quizzes ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // showBottomSheet_category(context);
                    show_bottom_sheet_category(context);
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Start Quiz",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
