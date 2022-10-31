import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MnbPub",
          style: TextStyle(
            color: Color.fromARGB(225, 103, 40, 40),
            fontFamily: GoogleFonts.sourceSerifPro(fontWeight: FontWeight.bold)
                .fontFamily,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
