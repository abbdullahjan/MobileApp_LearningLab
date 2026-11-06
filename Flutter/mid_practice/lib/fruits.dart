import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Image Example")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

         children: [
            MyFruitClass(imagePath: "assets/1.png", text: "SS1"),
            SizedBox(height: 30),
            MyFruitClass(imagePath: "assets/2.png", text: "SS2")
          ],
        ),
      ),
    ),
  );
}

class MyFruitClass extends StatefulWidget {
  final String imagePath;
  final String text;
  MyFruitClass({super.key, required this.imagePath, required this.text});

  @override
  State<MyFruitClass> createState() => myImageState(imagePath:imagePath , text: text);
}

class myImageState extends State<MyFruitClass> {
  final String imagePath;
  final String text;
  myImageState({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext build) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Image.asset(imagePath,width: 100, height: 100,),
          Text(text)
        ],
      )
    );
  }
}
