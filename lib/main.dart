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
    return MaterialApp(
      theme: LightTheme.apptheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
