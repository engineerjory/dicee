import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var right_index = 1;
  var left_index = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getRandomNum();
              },
              child: Image.asset(
                'assets/images/dice$right_index.png',
                // width: MediaQuery.of(context).size.width * 0.4,
                // height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: () {
                getRandomNum();
              },
              child: Image.asset(
                'assets/images/dice$left_index.png',
              ),
            ),
          )

          // Image.asset('assets/images/dice2')
        ],
      ),
    );
  }

  void getRandomNum() {
    setState(() {
      right_index = 1 + math.Random().nextInt(6);
      left_index = 1 + math.Random().nextInt(6);
    });
  }
}
