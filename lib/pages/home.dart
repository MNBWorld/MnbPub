import 'package:flutter/material.dart';
import 'package:mnbpub/components/bottomnavbar.dart';
import 'package:mnbpub/pages/coming_soon.dart';
import 'package:mnbpub/pages/testpage.dart';
import 'package:mnbpub/themes/default_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectedIndex = 0;

final screen = [
  ComingSoonPage(),
  TestPage(),
  ComingSoonPage(),
  TestPage(),
  TestPage(),
];

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
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Theme.of(context).brightness == Brightness.dark
                      ? Image.asset('assets/images/drk_logo.png')
                      : Image.asset('assets/images/lgt_logo.png'),
                ),
              ),
            ),
            body: Stack(
              children: [
                screen[selectedIndex],
                const Positioned(
                  bottom: 0,
                  child: BottomNavBar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
