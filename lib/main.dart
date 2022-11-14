import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:mnbpub/pages/home.dart';
import 'package:mnbpub/themes/default_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: LightTheme.apptheme,
      dark: DarkTheme.apptheme,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightTheme.apptheme,
        darkTheme: DarkTheme.apptheme,
        home: const HomePage(),
      ),
    );
  }
}
