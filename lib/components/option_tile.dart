import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

GestureDetector option_tile(BuildContext context) {
  return GestureDetector(
    onTap: () {
      print('option 1');
    },
    child: Container(
      padding: EdgeInsets.all(8),
      child: GlassContainer(
        blur: 1,
        shadowStrength: 5,
        opacity: 0.05,
        width: MediaQuery.of(context).size.width,
        borderRadius: BorderRadius.circular(2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            "data",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Ubuntu',
            ),
          )),
        ),
      ),
    ),
  );
}
