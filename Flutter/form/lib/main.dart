import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Registration Form',
      home: const FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // Simple string variables to store typed values
  String name = '';
  String email = '';
  String age = '';
  String city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration Form'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Row(
            children: [
              const Text('Name:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Text('Email:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Text('Age:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  onChanged: (value) {
                    setState(() {
                      age = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Text('City:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Submit button
          // ElevatedButton(
          //         onPressed: () {
          //           setState(() {

          //           });
          //         },
          //         child: Text('Change Message'),
          //       ),
          
          const SizedBox(height: 20),

          // Display values — update live as user types
          Container(
            color: Colors.grey[200],
            child: Text('Name: $name'),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey[200],
            child: Text('Email: $email'),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey[200],
            child: Text('Age: $age'),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey[200],
            child: Text('City: $city'),
          ),
        ],
      ),
    );
  }
}
