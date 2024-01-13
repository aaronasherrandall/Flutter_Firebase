import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(

  fontFamily: GoogleFonts.nunito().fontFamily,

  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.black87,
  ),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    // can also change other parameters like color, background etc.
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    labelLarge: TextStyle(
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: Colors.grey,
    ),
  ),
  // Define the ElevatedButton's default style
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // define the button's default style
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    ),
  ),
  // Define the TextButton's default style
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      // define the button's default style
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
  ),
  // Define the OutlinedButton's default style
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      // define the button's default style
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
  ),
);
