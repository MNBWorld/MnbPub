import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mnbpub/pages/testpage.dart';
import 'package:mnbpub/themes/default_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              toolbarHeight: size.height / 14,
              flexibleSpace: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Theme.of(context).brightness == Brightness.dark
                      ? Image.asset('assets/images/drk_logo.png')
                      : Image.asset('assets/images/lgt_logo.png'),
                ),
              ),
            ),
            body: Stack(
              children: [
                const TestPage(),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.height / 10,
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 15,
                                    sigmaY: 15,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color.fromRGBO(
                                              184, 99, 99, 0.28)
                                          : const Color.fromRGBO(
                                              255, 255, 255, 0.05),
                                      border: Border(
                                        top: BorderSide(
                                          width: 1,
                                          color: Theme.of(context).brightness !=
                                                  Brightness.light
                                              ? Colors.white.withOpacity(0.2)
                                              : Colors.pink.withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
