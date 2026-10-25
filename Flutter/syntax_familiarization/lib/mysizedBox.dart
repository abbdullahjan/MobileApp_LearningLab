import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0, // Approach 2: Set height of SizedBox
                child: Text('ITEM 1'),
              ),
              SizedBox(
                height: 140.0, // Approach 2: Set height of SizedBox
                child: Text('ITEM 2'),
              ),
              SizedBox(
                height: 20.0, // Approach 2: Set height of SizedBox
                child: Text('ITEM 3'),
              ),
            ],
          ),
    );
  }
}
