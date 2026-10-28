import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const MyBar()),
        body: MyForm(),
      ),
    ),
  );
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyState();
}

class _MyState extends State<MyForm> {
  final List<String> myList = [];
  final TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        myHeading(),
        Row(
          children: [
            Text("Enter New Field: "),
            SizedBox(width: 200, child: TextField(controller: controller1)),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if(controller1.text != ""){
              myList.add(controller1.text);}
            });
          },
          child: Text("Add"),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return Text("${myList[index]}");
            }),
            itemCount: myList.length,
          ),
        ),
      ],
    );
  }
}

Widget myHeading() {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "COMSATS",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "BCS-6B",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

class MyBar extends StatelessWidget {
  const MyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [Text("Abdullah Jan"), Text("SP24-BCS-142")],
    );
  }
}
