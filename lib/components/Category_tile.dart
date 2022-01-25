import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/url_data.dart';

import 'difficulty_bottom_sheet.dart';

Padding Category_tile(
    String category, String Title, BuildContext context, String image_url) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: InkWell(
      onTap: () {
        url_data_category(category);
        Navigator.pop(context);
        show_bottom_sheet_difficulty(context);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        // height: 10,
        // width: 10,
        decoration: BoxDecoration(
          color: Color.fromRGBO(200, 200, 200, 0.12),
          image: DecorationImage(
            // image: AssetImage(image_url),
            image: CachedNetworkImageProvider(
                'https://img.icons8.com/dotty/160/000000/question-mark.png'),
            fit: BoxFit.scaleDown,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(Title,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu'))),
      ),
    ),
  );
}
