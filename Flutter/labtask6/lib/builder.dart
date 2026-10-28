import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const MyBar(),
        ),
        body: MyForm(),
      ),
    ),
  );
}

class MyForm extends StatefulWidget {
  MyForm({super.key});

  
  

  @override
  State<MyForm> createState() => _MyState();
}

class _MyState extends State<MyForm> {
final List<String> myList = [
    "Abdullah",
    "Ahmed",
    "Abdullah",
    "Abubakr",
    "Musa",
    "Mustafa",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        myHeading(),
        ListView.builder(itemBuilder: ((context, index){
        return Text("${myList[index]}");  
        }),
        itemCount: myList.length,
        shrinkWrap: true,
        ),
        ElevatedButton(onPressed: ((){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: 
            ListView.builder(itemBuilder: ((context, index){
        return Text("${myList[index]}");  
        }),
        itemCount: myList.length,
        shrinkWrap: true,
        ),
            // Text("${myList}"))
          ));
        }), child: Text("Click Here"))
        
      ],
    );
  }
}

Widget myHeading() {
  return const 
  Center(child:
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "COMSATS",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "BCS-6B",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ));
}

class MyBar extends StatelessWidget {
  const MyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Abdullah Jan"),
        Text("SP24-BCS-142"),
      ],
    );
  }

  
}