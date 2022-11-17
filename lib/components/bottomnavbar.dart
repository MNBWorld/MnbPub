import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mnbpub/pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.currentScreen});

  /// Index Value⤵
  final ValueNotifier<int> currentScreen;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

//// -----------> Bottom Bar Animator <--------------- ////
class _BottomNavBarState extends State<BottomNavBar>
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

  @override
  Widget build(BuildContext context) {
    /// Screen size getter⤵
    final Size size = MediaQuery.of(context).size;

    ///     ⬇ Bottom Nav Bar
    return Row(
      children: [
        /// ⬇ Bottom Bar Panel
        SizedBox(
          width: size.width,
          height: size.height / 10,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,

                /// Blur⤵
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 15,
                      sigmaY: 15,
                    ),

                    /// {Themed}⬇ Panel Background
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? const Color.fromRGBO(184, 99, 99, 0.28)
                            : const Color.fromRGBO(255, 255, 255, 0.1),
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color:
                                Theme.of(context).brightness != Brightness.light
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.pink.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// ⬇ Animation Slide ⬇
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-2, 0.0),
                  end: const Offset(2, 0.0),
                ).animate(
                  CurvedAnimation(
                    parent: _controller,
                    curve: Curves.linear,
                  ),
                ),
                child: Container(
                  width: size.width / 5,
                  height: size.height / 15.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Theme.of(context).brightness == Brightness.light
                          ? const AssetImage('assets/images/lgt_slide.png')
                          : const AssetImage('assets/images/drk_slide.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              /// ⬇ Nav BAr Items ⬇
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  bnbItems('assets/icons/icn1.png', 0, size.height / 25),
                  bnbItems('assets/icons/icn2.png', 1, size.height / 21),
                  bnbItems('assets/icons/icn3.png', 2, size.height / 19),
                  bnbItems('assets/icons/icn4.png', 3, size.height / 34, 9.0),
                  bnbItems('assets/icons/icn5.png', 4, size.height / 21),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// -------------> Nav Bar Item Widget <--------------- ///
  Widget bnbItems(String image, int index, double height, [double? pad]) {
    return InkWell(
      /// {Themed} ⬇ onTap Splash ⬇
      splashColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white.withOpacity(0.5)
          : Colors.pink.withOpacity(0.5),
      enableFeedback: true,

      /// ⬇ onTap Function ⬇
      onTap: () {
        currentScreen.value = index;
        _controller.animateTo(index / 4);
      },

      /// ⬇ Item Widget ⬇
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        child: Padding(
          padding: EdgeInsets.only(top: pad ?? 5.0),
          child: Image.asset(
            image,
            height: height,
          ),
        ),
      ),
    );
  }
}
