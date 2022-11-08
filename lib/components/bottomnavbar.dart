import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mnbpub/pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
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
              // PositionedTransition(
              //   rect: ,
              //   child:
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Theme.of(context).brightness == Brightness.light
                        ? const AssetImage('assets/images/lgt_slide.png')
                        : const AssetImage('assets/images/drk_slide.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                // ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bnbItems('assets/icons/icn1.png', 0, 26.33),
                  bnbItems('assets/icons/icn2.png', 0, 33),
                  bnbItems('assets/icons/icn3.png', 0, 34.33),
                  bnbItems('assets/icons/icn4.png', 0, 18),
                  bnbItems('assets/icons/icn5.png', 0, 31),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bnbItems(String image, int index, double height) {
    return InkWell(
      onTap: () => setState(() {
        selectedIndex = index;
      }),
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Image.asset(
            image,
            height: height,
          ),
        ),
      ),
    );
  }
}
