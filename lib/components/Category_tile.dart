import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/services/url_data.dart';

import 'difficulty_bottom_sheet.dart';

Padding Category_tile(String category, String Title, BuildContext context, String image_url) {
    
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: InkWell(
      onTap: () {
        url_data_category(category);
        Navigator.pop(context);
        show_bottom_sheet_difficulty(context);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Color.fromRGBO(200, 200, 200, 0.5),
          image: DecorationImage(
            image: AssetImage(image_url),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Text(Title)),
      ),
    ),
  );
}
