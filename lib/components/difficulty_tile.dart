import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/services/url_data.dart';
import '../theme/theme.dart';

Padding Difficulty_tile(String difficulty, String Title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: InkWell(
      onTap: () {
        url_data_difficulty(difficulty);
        getValue();
        // apicall();
        Navigator.push(context,MaterialPageRoute(builder: (context) => Quiz_screen(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(Title,
              style: TextStyle(
                fontSize: 20,
              )),
        ),
      ),
    ),
  );
}
