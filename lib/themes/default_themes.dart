import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class LightTheme {
  static final apptheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 254, 222, 225),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color.fromARGB(255, 254, 222, 225),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      elevation: 0.0,
      color: Colors.transparent,
      
      titleTextStyle: TextStyle(
        color: Color.fromARGB(255, 103, 40, 40),
        fontFamily: 'Sfpro',
        fontSize: 24,
        // fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w700,
      ),
    ),
    // textTheme: TextTheme(
    //   bodyLarge: TextStyle(
    //     color: Color.fromARGB(255, 103, 40, 40),
    //     fontFamily: 'Sfpro',
    //     fontSize: 24,
    //     // fontStyle: FontStyle.italic,
    //     fontWeight: FontWeight.w700,
    // )
  );
}

class DarkTheme {
  static final apptheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 21, 16, 56),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color.fromARGB(255, 21, 16, 56),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      elevation: 0.0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Sfpro',
        fontSize: 24,
        // fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w700,
      ),
    ),

    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Colors.white,
    //   ),
    // ),
  );
}
