
import 'dart:math';
import 'package:flutter/material.dart';


class ChangeColor extends StatefulWidget {
  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  Color backgroundColor = Colors.grey;
  Color textColor = Colors.black;

  List<Color> myColorList = [
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.purple,
  ];

  void changeColor() {
    int index = Random().nextInt(myColorList.length);
    setState(() {
      backgroundColor = myColorList[index];
      textColor = myColorList[index + 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Change Color"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeColor,
          child: Text("Tap me to change color",
          style: TextStyle(color: textColor,fontSize: 25)),
        ),
      ),
    );
}
}