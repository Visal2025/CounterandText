import 'package:flutter/material.dart';

class TextInputScreen extends StatefulWidget{
  @override
  State<TextInputScreen> createState() => _TextInputScreenState();
}


class _TextInputScreenState extends State<TextInputScreen> {

  String text = '';

  void changeText(String val){
    setState(() {
      text=val;
    });
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Text input example"),
      backgroundColor: Colors.red,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              onChanged: changeText,
              decoration: InputDecoration(
                labelText: "Enter Text", 
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("You typed: $text"),
        ],
      ),
    ));
}
}