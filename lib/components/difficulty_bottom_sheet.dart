import 'dart:math';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:quiz_app/components/difficulty_tile.dart';

Future<dynamic> show_bottom_sheet_difficulty(BuildContext context) {
  // String selected_category;
  // String image_url;
  return showModalBottomSheet(
      context: context,
      backgroundColor: Color.fromRGBO(20, 20, 20, 0.5),
      barrierColor: Colors.black45,
      builder: (context) {
        return GlassContainer(
          // height: ,
          blur: 3,
          shadowStrength: 20,
          opacity: 0.05,
          width: max(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height),
          borderRadius: BorderRadius.circular(40),
          child: Center(
            child: Builder(builder: (context) {
              return Column(
                children: [
                  Difficulty_tile("easy", "Easy", context),
                  Difficulty_tile(
                    "medium",
                    "Medium",
                    context,
                  ),
                  Difficulty_tile(
                    "hard",
                    "Hard",
                    context,
                  ),
                ],
              );
            }),
          ),
        );
      });
}
