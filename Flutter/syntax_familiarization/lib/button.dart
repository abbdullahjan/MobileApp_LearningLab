import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  const MyButton({super.key});
  
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton>{
  int count = 0;
  @override 
  Widget build(BuildContext buildContext){
    return Center(child: Container(
      height: 200,
      decoration: BoxDecoration( color: Color.fromRGBO(1, 255, 255, 100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("$count"),
        SizedBox(height:10),
    ElevatedButton(onPressed: () => {setState((){count++;})}, child: Text("Increment")),
        SizedBox(height:10),
    ElevatedButton(onPressed: () => {setState((){count--;})}, child: Text("Decrement")),

    ],)));
  }  
} 
