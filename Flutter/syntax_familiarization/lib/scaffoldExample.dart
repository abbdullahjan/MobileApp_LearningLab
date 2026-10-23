
import 'package:flutter/material.dart';

class Scaffoldexample extends StatelessWidget{
  const Scaffoldexample({super.key});

  @override
  Widget build(BuildContext BuildContext){
    return(
      Scaffold(
        appBar: AppBar(
          title: Text("This is a simple App Bar"),
          centerTitle: true,
          shape: Border(
            top: BorderSide(color: Color(0xFF000000), width: 2.0), 
            bottom: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
        )
        ),
        body: Center(
          child: Text("This is the text for body of a scaffold"))

      )
    );
  }
}