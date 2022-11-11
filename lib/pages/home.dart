import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mnbpub/pages/coming_soon.dart';
import 'package:mnbpub/pages/testpage.dart';
import 'package:mnbpub/themes/default_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  final screen = [
    const ComingSoonPage(),
    const TestPage(),
    const ComingSoonPage(),
    const TestPage(),
    const TestPage(),
  ];

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
                screen[_selectedIndex],
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.height / 10,
                        child: Stack(
                          alignment: Alignment.center,
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
                                              255, 255, 255, 0.1),
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
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-2.96, 0.0),
                                end: const Offset(2.96, 0.0),
                              ).animate(
                                CurvedAnimation(
                                  parent: _controller,
                                  curve: Curves.linear,
                                ),
                              ),
                              child: Container(
                                width: size.width / 7.4,
                                height: size.height / 15.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? const AssetImage(
                                            'assets/images/lgt_slide.png')
                                        : const AssetImage(
                                            'assets/images/drk_slide.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                bnbItems('assets/icons/icn1.png', 0,
                                    size.height / 25),
                                bnbItems('assets/icons/icn2.png', 1,
                                    size.height / 21),
                                bnbItems('assets/icons/icn3.png', 2,
                                    size.height / 19),
                                bnbItems('assets/icons/icn4.png', 3,
                                    size.height / 34),
                                bnbItems('assets/icons/icn5.png', 4,
                                    size.height / 21),
                              ],
                            ),
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

  Widget bnbItems(
    String image,
    int index,
    double height,
  ) {
    return InkWell(
      splashColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white.withOpacity(0.5)
          : Colors.pink.withOpacity(0.5),
      enableFeedback: true,
      onTap: () => setState(() {
        _selectedIndex = index;
        _controller.animateTo(index / 4);
      }),
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Image.asset(
            image,
            height: height,
          ),
        ),
      ),
    );
  }
}
