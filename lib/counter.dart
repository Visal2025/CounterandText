
import 'package:flutter/material.dart';


class CounterExample extends StatefulWidget {
  

  @override
  State<CounterExample> createState() => _CounterExampleState();
  
}
 
class _CounterExampleState extends State<CounterExample>{
  int count=0;

  void incrementCount(){
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      
        title: Text("StatefulWidget Example"),
        backgroundColor: Colors.blue,
        
      ),
      body: Center(
        child: Column(
          children: [
        Text("You have pushed this button this many times"),
        Text("$count")
          ],
          
        ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            incrementCount();
          },
          child: Text("+"),
          
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(onPressed: () {
            decrementCount();
          },
          child: Text("-"),
          ),
        ],
      ),
    );
  }
}
