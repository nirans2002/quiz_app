import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import 'Category_tile.dart';

Future<dynamic> show_bottom_sheet_category(BuildContext context) {
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
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Category_tile("javascript", "JavaScript", context,
                    "assets/images/js.png"),
                Category_tile(
                    "mysql", "MySQL", context, "assets/images/py.png"),
                Category_tile(
                    "laravel", "Laravel", context, "assets/images/py.png"),
                Category_tile(
                    "laravel", "Laravel", context, "assets/images/py.png"),
                Category_tile(
                    "linux", "Linux", context, "assets/images/py.png"),
                Category_tile(
                    "wordpress", "WordPress", context, "assets/images/py.png"),
                Category_tile("php", "PHP", context, "assets/images/py.png"),
                Category_tile(
                    "devops", "DevOps", context, "assets/images/py.png"),
                Category_tile(
                    "docker", "Docker", context, "assets/images/py.png"),
              ],
            ),
          ),
        );
      });
}
