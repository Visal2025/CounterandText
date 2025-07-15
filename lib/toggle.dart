import 'package:flutter/material.dart';

class ToggleExample extends StatefulWidget{
  @override
  State<ToggleExample> createState() => _ToggleExampleState();
}

class _ToggleExampleState extends State<ToggleExample>{
bool _isOn=false;

void toggle() {
  setState(() {
    _isOn = !_isOn;
  });
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: 
      AppBar(backgroundColor: Colors.red,title: Text("Toggle Example")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_isOn? "ON":"OFF",style: TextStyle(fontSize: 50)),
            ElevatedButton(onPressed: () {
              toggle();
              }, child: 
            Text(_isOn? "Turn OFF":"TURN ON"))
          ],
        ),
      ),
    );
  }
}