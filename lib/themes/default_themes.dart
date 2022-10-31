import "package:flutter/material.dart";

class LightTheme {
  static final apptheme = ThemeData(
    // applyElevationOverlayColor: true
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
  );
}

class DarkTheme {
  static final apptheme = ThemeData(
    primaryColor: Color.fromARGB(255, 225, 225, 225),
  );
}
