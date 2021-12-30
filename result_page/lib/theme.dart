import 'package:flutter/material.dart';
//TODO: costumize colors and defaults
const primaryColor = Color(0xFF6066D0);
const cardColor = Color(0xFF9E9E9E);
const secondaryColor = Color(0xFFFCA82F);
const contentColorLightTheme = Color(0xFF1D1D35);
const contentColorDarkTheme = Color(0xFFF5FCF9);
const warninngColor = Colors.red;
const errorColor = Color(0xFFF03738);
const scaffoldBackgroundColor = Color(0xFF5C1063);

const defaultPadding = 20.0;

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: contentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: primaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: contentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: contentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: contentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: primaryColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: true, elevation: 0.75);