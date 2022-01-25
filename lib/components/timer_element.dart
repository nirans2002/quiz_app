import 'package:flutter/material.dart';

Widget buildTimeCard({
  required String time,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        time,
      ),
    );
