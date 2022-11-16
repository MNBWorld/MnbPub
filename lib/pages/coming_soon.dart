import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ComingSoonPage extends StatelessWidget {
  // showSeenInfo() async {
  //   const int isSeen = 0;
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('CSP', isSeen);
  // }

  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height / 3.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Theme.of(context).brightness == Brightness.light
                    ? const AssetImage('assets/images/lgt_pending.png')
                    : const AssetImage('assets/images/drk_pending.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
