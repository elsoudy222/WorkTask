import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/colors_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color defaultColor = Colors.amber;

  void changeBackgroundColor(){
    var randomColor = Random().nextInt(colorArray.length);
    setState(() {
      defaultColor = colorArray[randomColor];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
           changeBackgroundColor();
        },
        child: Container(
          decoration: BoxDecoration(
            color: defaultColor,
          ),
          child:  Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0)
              ),
              height: 80,
              width: 220,
              child: const Center(
                child: Text(
                  'Hello There',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
