import 'package:flutter/material.dart';
import 'package:quiz_app/theme/theme.dart';

Widget buildTimeCard({
  required String time,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        time,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: secondaryColor,
            fontFamily: 'Ubuntu'),
      ),
    );
