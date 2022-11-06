import 'package:flutter/material.dart';

class Testpage extends StatelessWidget {
  const Testpage({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            color: Colors.amber,
            width: 32,
            height: 32,
          ),
        ],
      ),
    );
  }
}
