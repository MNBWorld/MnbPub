import "package:flutter/material.dart";
import 'package:flutter/services.dart';

/// ----------------> Light Theme <------------------ ///
class LightTheme {
  static final apptheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Color.fromARGB(255, 103, 40, 40),
        fontFamily: 'Sfpro',
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

/// ----------------> Dark Theme <------------------ ///
class DarkTheme {
  static final apptheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Sfpro',
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

/// -------------> System UI Overlay <------------- ///
class ThemedStatusBar extends StatelessWidget {
  const ThemedStatusBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: Theme.of(context).brightness == Brightness.dark
          ? const SystemUiOverlayStyle(
              statusBarColor: Color.fromARGB(255, 21, 16, 56),
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: Color.fromARGB(255, 41, 6, 54),
              systemNavigationBarIconBrightness: Brightness.light,
            )
          : const SystemUiOverlayStyle(
              statusBarColor: Color.fromARGB(255, 253, 244, 244),
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Color.fromARGB(255, 234, 203, 195),
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
      child: child,
    );
  }
}
