import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyState();
}

class MyState extends State<MyApp> {
  String message = ' Abdullah Jan Here!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.blue,
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message,
                  style: TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = 'Hello! Message Changed!';
                    });
                  },
                  child: Text('Change Message'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}