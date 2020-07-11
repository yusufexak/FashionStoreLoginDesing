import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logindesing/Utils/Constants/app_colors.dart';

class AppTheme {
  static final myTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.abelTextTheme().copyWith(
      headline1: TextStyle(
        color: AppColors.kDarkGreen,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
    cursorColor: Colors.grey,
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey,
        hoverColor: Colors.grey,
        focusColor: Colors.grey,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: .5,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: .5,
          ),
        ),
        labelStyle: TextStyle(
            color: AppColors.kDarkGreen,
            fontSize: 20,
            fontWeight: FontWeight.bold)),
  );
}
