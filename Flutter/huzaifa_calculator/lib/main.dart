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
        title: const Text('Huzaifa Nawaz     Reg: SP24-BCS-159'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome message
              const Text(
                'Welcome to Assignment 2',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),

              // App title
              const Text(
                'Calculator Application',
                style: TextStyle(fontSize: 16, color: Colors.indigo),
              ),
              const SizedBox(height: 25),

              // Input fields inside a container
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('First Number:'),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: firstController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Second Number:'),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: secondController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Button row 1: Sum and Multiplication
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculate('Sum'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text('Sum'),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => calculate('Multiplication'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text('Multiplication'),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Button row 2: Division and Subtraction
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculate('Division'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                    child: const Text('Division'),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => calculate('Subtraction'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Subtraction'),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Button row 3: Clear alone, centered
              ElevatedButton(
                onPressed: clear,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                child: const Text('Clear'),
              ),
              const SizedBox(height: 25),

              // Result field - styled container with centered text
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    result,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
