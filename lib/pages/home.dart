import 'package:flutter/material.dart';
import 'package:mnbpub/components/bottomnavbar.dart';
import 'package:mnbpub/components/coming_soon.dart';
import 'package:mnbpub/themes/default_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

//// --------------------> Index Key <--------------------- ////
/// {!!!Default value doesn't set the tab item in bottomnavbar!!!}
final ValueNotifier<int> currentScreen = ValueNotifier<int>(0);

/// -> List Of Pages <- ///
final screen = [
  const ComingSoonPage(),
  const ComingSoonPage(),
  const ComingSoonPage(),
  const ComingSoonPage(),
  const ComingSoonPage(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// Screen size getter⤵
    final Size size = MediaQuery.of(context).size;

    /// System UI Overlay⤵
    return ThemedStatusBar(
      child: SafeArea(
        ///    ⬇ App {themed} Background Image
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Theme.of(context).brightness == Brightness.light
                  ? const AssetImage('assets/images/lgt_bg.png')
                  : const AssetImage('assets/images/drk_bg.png'),
              fit: BoxFit.cover,
            ),
          ),

          /// Body ⤵
          child: Scaffold(
            backgroundColor: Colors.transparent,

            /// ⬇ APP BAR ⬇
            appBar: AppBar(
              toolbarHeight: size.height / 14,
              flexibleSpace: Stack(
                children: [
                  /// ⬇ Appbar Border ⬇
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Theme.of(context).brightness == Brightness.dark
                        ? Image.asset('assets/images/ln_1.png')
                        : Image.asset('assets/images/ln_2.png'),
                  ),

                  /// ⬇ LOGO ⬇
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 15, bottom: 5.0),
                      child: Theme.of(context).brightness == Brightness.dark
                          ? Image.asset('assets/images/drk_logo.png')
                          : Image.asset('assets/images/lgt_logo.png'),
                    ),
                  ),
                ],
              ),
            ),

            /// Body content changer⤵
            body: ValueListenableBuilder(
              valueListenable: currentScreen,
              builder: (context, value, child) => Stack(
                children: [
                  /// Screens⤵
                  screen[currentScreen.value],

                  /// ⬇ Bottom Nav Bar
                  Positioned(
                    bottom: 0,
                    child: BottomNavBar(currentScreen: currentScreen),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
