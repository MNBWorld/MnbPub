import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static final apptheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Color.fromARGB(225, 103, 40, 40),
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontSize: 22,
      ),
    ),
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Color.fromARGB(225, 103, 40, 40),
    //   ),
    // ),
  );
}

class DarkTheme {
  static final apptheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Sfpro',
          fontSize: 22,
          // fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,),
    ),
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Colors.white,
    //   ),
    // ),
  );
}
