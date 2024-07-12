import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    canvasColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.light(
      surface: Colors.white,

    ),
    dataTableTheme: DataTableThemeData(
      dataRowColor: WidgetStateProperty.all(Colors.white),
      headingRowColor: WidgetStateProperty.all(Colors.white),
    ),

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
        ),
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xFF696F79),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      titleSmall: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xFF696F79),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),

      /// skills text
      bodySmall: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xFF1DBF73),
          fontSize: 12,
        ),
      ),
      /// social media widget
      bodyMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    ),
  );
}
