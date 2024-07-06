import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    textTheme: TextTheme(
      /** used in :-
       * 1- account login and register title
       * 2- in who Am I
       * 3- Services
       * */
      titleLarge: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        )
      ),
      titleSmall: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xFF696F79),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        )
      ),
    )
  );
}