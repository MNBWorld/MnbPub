import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ScrollPhysics(),
      itemCount: 2,
      reverse: false,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Switch'),
          ),
          Container(
            color: Colors.amber,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.green,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.blue,
            width: 250,
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amber,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amber,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amber,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amber,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            width: 32,
            height: 32,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
