import 'package:flutter/material.dart';

Padding Category_tile(String selected_category, String Title,
    BuildContext context, String image_url) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: InkWell(
      onTap: () {
        selected_category;
        Navigator.pop(context);
        print(selected_category);
      },
      child: Container(
        padding: EdgeInsets.all(8),
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
