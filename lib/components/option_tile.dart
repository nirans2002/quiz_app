import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

GestureDetector optionTile(
    void incrementIndex(), String option, BuildContext context, text) {
  return GestureDetector(
    onTap: () {
      choose(option);
      // checkAnswer;
      incrementIndex();
    },
    child: Container(
      padding: EdgeInsets.all(8),
      child: GlassContainer(
        blur: 10,
        shadowStrength: 10,
        opacity: 0.2,
        width: MediaQuery.of(context).size.width,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // height: 60,
          // color: Color(0xFFEFEFF0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 9.0, 9.0, 9.0),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Ubuntu',
              ),
            )),
          ),
        ),
      ),
    ),
  );
}
