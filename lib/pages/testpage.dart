import 'package:flutter/material.dart';

class Testpage extends StatefulWidget {
  const Testpage({super.key});

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.red.shade400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
