import 'package:counterproject/changecolor.dart';
import 'package:counterproject/counter.dart';
import 'package:counterproject/text.dart';
import 'package:counterproject/toggle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ToggleExample(),
      debugShowCheckedModeBanner: false,
     );
  }
}
