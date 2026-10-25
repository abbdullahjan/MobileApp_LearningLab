import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({super.key});

  State<MyTextField> createState() => _mytextState();
}

class _mytextState extends State<MyTextField> {
  String input = "";
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 300),
                  Text("Input: "),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          input = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 300),
                ],
              ),
              TextField(controller: TextEditingController(text: input.toUpperCase())),
            ],
          ),
        ),
      ),
    );
  }
}
