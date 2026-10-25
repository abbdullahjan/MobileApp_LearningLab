import 'package:flutter/material.dart';
import 'package:syntax_familiarization/MyTextField.dart';
import 'package:syntax_familiarization/button.dart';
import 'package:syntax_familiarization/mysizedBox.dart';
import 'materialApp.dart';
import 'scaffoldExample.dart';
import 'rowExample.dart';
import 'button.dart';

void main(){
  String text = "this is text";
  runApp(
    // const materialTest()

    // const MaterialApp(home:Scaffoldexample(),
    // debugShowCheckedModeBanner: false,)
    // const MaterialApp(home: Rowexample())


    // const MaterialApp(home: Scaffold(
  
    //   body: Column(
    //     children: [
    //       Rowexample(),
    //       Row(children: [
    //         SizedBox(
    //           width: 50,
    //           height: 100,
    //           )],
    //           ),          
    //       MyApp()
    //     ],
    //   ),
    //   ),
    // ));
  

    // ---------

    // MaterialApp(
    //   home: Scaffold(
    //     body: Column( 
    //      children: [
    //      Text(text),
    //      FloatingActionButton(onPressed: (){text = "new text" ; }, child:Text("click"))
    //      ]
    //      )
    //   ),
    // ));


    // .......................
    // .......................
    // MaterialApp(
    //   home: Scaffold(
    //     body: MyButton()
    //   ),
    // )); 

    // .......................
    MyTextField()

);
}
