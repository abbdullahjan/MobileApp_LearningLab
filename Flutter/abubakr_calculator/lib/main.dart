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
        title: const Text('Abubakr     Reg: SP24-BCS-145'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Welcome message
            const Center(
              child: Text(
                'Welcome to Assignment 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),

            // App title
            const Center(
              child: Text(
                'Calculator Application',
                style: TextStyle(fontSize: 16, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),

            // First Number - label on top, field below
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('First Number'),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),

            // Second Number - label on top, field below
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Second Number'),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),

            // Buttons stacked vertically, full width, different colors
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => calculate('Sum'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Sum'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => calculate('Multiplication'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('Multiplication'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => calculate('Division'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text('Division'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => calculate('Subtraction'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text('Subtraction'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: clear,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text('Clear'),
              ),
            ),
            const SizedBox(height: 20),

            // Result field - bordered container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 2),
              ),
              child: Text(
                result,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
