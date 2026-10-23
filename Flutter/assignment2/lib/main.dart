import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Application',
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // Controllers to read the input fields
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  // Stores the result text
  String result = '';

  // Runs when any operation button is pressed
  void calculate(String operation) {
    // Read values from input fields
    double? num1 = double.tryParse(firstController.text);
    double? num2 = double.tryParse(secondController.text);

    // Input validation
    if (num1 == null || num2 == null) {
      setState(() {
        result = 'Please enter valid numbers';
      });
      return;
    }

    // Perform the operation
    setState(() {
      if (operation == 'Sum') {
        result = 'Result: ${num1 + num2}';
      } else if (operation == 'Multiplication') {
        result = 'Result: ${num1 * num2}';
      } else if (operation == 'Division') {
        if (num2 == 0) {
          result = 'Cannot divide by zero';
        } else {
          result = 'Result: ${num1 / num2}';
        }
      } else if (operation == 'Subtraction') {
        result = 'Result: ${num1 - num2}';
      }
    });
  }

  // Clears everything
  void clear() {
    setState(() {
      firstController.clear();
      secondController.clear();
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abdullah Jan     Reg: SP24-BCS-142'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Welcome message
          const Center(
            child: Text(
              'welcome to Assignment 2',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 5),

          // App title
          const Center(
            child: Text(
              'Calculator Application',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),

          // First Number input
          Row(
            children: [
              const Text('First Number:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  controller: firstController,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Second Number input
          Row(
            children: [
              const Text('Second Number:'),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                ),
                  controller: secondController,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // First row of buttons: Sum, Multiplication, Division
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => calculate('Sum'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Sum'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => calculate('Multiplication'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Multiplication'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => calculate('Division'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Division'),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Second row of buttons: Subtraction, Clear
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => calculate('Subtraction'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Subtraction'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: clear,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Clear'),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Result field
          Row(
            children: [
              const Text('Result:'),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Text(result),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
