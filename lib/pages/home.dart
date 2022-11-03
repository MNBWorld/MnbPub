import 'package:flutter/material.dart';
import 'package:mnbpub/themes/default_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ThemedStatusBar(
      child: SafeArea(
        child: Container(
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
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      textScaleFactor: 1,
                    )
                  : RichText(
                      text: const TextSpan(
                        text: "MnbPub",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sfpro',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      textScaleFactor: 1,
                    ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            // bottomNavigationBar: ,
          ),
        ),
      ),
    );
  }
}
