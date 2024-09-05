import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  String selectedOperation = 'Add';
  String _result = '';

  void calculate() {
    double num1 = double.tryParse(_controller1.text) ?? 0;
    double num2 = double.tryParse(_controller2.text) ?? 0;
    double result = 0;

    switch (selectedOperation) {
      case 'Add':
        result = num1 + num2;
        break;
      case 'Subtract':
        result = num1 - num2;
        break;
      case 'Multiply':
        result = num1 * num2;
        break;
      case 'Divide':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          _result = 'Cannot divide by zero';
          return;
        }
        break;
    }

    setState(() {
      _result = 'Result: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            SizedBox(height: 20),
            Text('Select Operation:'),
            RadioListTile<String>(
              title: Text('Add'),
              value: 'Add',
              groupValue: selectedOperation,
              onChanged: (value) {
                setState(() {
                  selectedOperation = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Subtract'),
              value: 'Subtract',
              groupValue: selectedOperation,
              onChanged: (value) {
                setState(() {
                  selectedOperation = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Multiply'),
              value: 'Multiply',
              groupValue: selectedOperation,
              onChanged: (value) {
                setState(() {
                  selectedOperation = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Divide'),
              value: 'Divide',
              groupValue: selectedOperation,
              onChanged: (value) {
                setState(() {
                  selectedOperation = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
