import 'package:flutter/material.dart';
import '../theme/theme.dart';

Padding Difficulty_tile(String selected_difficulty, String Title,
    BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: InkWell(
      onTap: () {
        selected_difficulty;
        Navigator.pop(context);
        print(selected_difficulty);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        // height:20,
        // width: 20,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(Title)),
      ),
    ),
  );
}
