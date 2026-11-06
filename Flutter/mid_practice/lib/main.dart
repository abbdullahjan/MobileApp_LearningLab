import 'dart:ffi';

import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CalculatorWidget())
    )
  );
}

class CalculatorWidget extends StatefulWidget{
  CalculatorWidget({super.key});
  

  State<CalculatorWidget> createState() => MyCalculatorState();
}

class MyCalculatorState extends State<CalculatorWidget>{
  String Input = "";



  @override
  Widget build(BuildContext context){
   return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: TextEditingController(text: Input),
                ),
              Row(children: [
                ElevatedButton(onPressed: () => setState(() {
                  Input = "${Input}1";
                }), child: Text("1"),),
                ElevatedButton(onPressed: () => setState(() {
                  Input = "${Input}2";
                }), child: Text("2"),),
                ElevatedButton(onPressed: () => setState(() {
                  Input = "${Input}3";
                }), child: Text("3"),),
                ElevatedButton(onPressed: () => setState(() {
                  Input = "${Input}+";
                }), child: Text("+"),),
                ElevatedButton(onPressed: () => setState(() {
                  var arr = Input.split("+");
                  int sum = 0;
                  for(var i in arr){
                    if(int.tryParse(i) != null){
                      sum += int.parse(i);
                    }
                  }
                  Input = "${sum}";
                }), child: Text("="),),

              ],)
            ]
          )
        );
      
  }
}