import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Text("Hello")
    )
  );
}

class materialTest extends StatelessWidget{
  const materialTest({super.key});

  @override
  Widget build(BuildContext BuildContext){
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      home: Center(child: Text("Hello")));
  }
}