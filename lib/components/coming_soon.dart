import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mnbpub/utils/utils.dart';

//// ---------> Under Construction Page <--------- ////
class ComingSoonPage extends StatelessWidget {
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
            /// Adjustive width
            height: size.height / 3.6,
            width: size.width / 1.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                /// ⬇ ------- {Themed} under construction png ------- ⬇
                image: Theme.of(context).brightness == Brightness.light
                    ? const AssetImage('assets/images/lgt_pending.png')
                    : const AssetImage('assets/images/drk_pending.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Under Construction',
            style: TextStyle(
              fontFamily: GoogleFonts.sen(
                fontWeight: FontWeight.w600,
              ).fontFamily,
              fontSize: size.height / 45,
              color: Theme.of(context).brightness == Brightness.light
                  ? lgtacc
                  : drkacc,
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
