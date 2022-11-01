import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final textscale = MediaQuery.of(context).textScaleFactor;
    // print(textscale);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Theme.of(context).brightness == Brightness.light
              ? const AssetImage('assets/images/lgt_bg.png')
              : const AssetImage('assets/images/drk_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Theme.of(context).brightness == Brightness.light
              ? RichText(
                  text: const TextSpan(
                    text: "MnbPub",
                    style: TextStyle(
                      color: Color.fromARGB(255, 103, 40, 40),
                      fontFamily: 'Sfpro',
                      fontSize: 24,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textScaleFactor: 1.3,
                )
              : RichText(
                  text: const TextSpan(
                    text: "MnbPub",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Sfpro',
                      fontSize: 24,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textScaleFactor: 1.3,
                ),
        ),
        body: Container(),
      ),
    );
  }
}
