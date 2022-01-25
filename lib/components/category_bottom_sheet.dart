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
                Category_tile(
                    "linux", "Linux", context, "assets/images/linux.png"),
                Category_tile(
                    "bash", "Bash", context, "assets/images/linux.png"),
                Category_tile(
                    "docker", "Docker", context, "assets/images/js.png"),
                Category_tile(
                    "sql", "MySQL", context, "assets/images/mysql.png"),
                Category_tile(
                    "cms", "CMS", context, "assets/images/laravel.png"),
                Category_tile(
                    "code", "Code", context, "assets/images/laravel.png"),
                Category_tile(
                    "devops", "DevOps", context, "assets/images/js.png"),
                Category_tile("uncategorized", "Un Categorized", context,
                    "assets/images/js.png"),
              ],
            ),
          ),
        );
      });
}
