import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class reversenumber extends StatefulWidget {
  _reversenumberState createState() => _reversenumberState();
}

class _reversenumberState extends State<reversenumber> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

  void navigateToDisplayNumbersScreens() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DisplayNumbersScreen(
          firstNumber: int.parse(firstNumberController.text),
          secondNumber: int.parse(secondNumberController.text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter number'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: firstNumberController,
                decoration:
                    InputDecoration(labelText: "Enter the first number"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: secondNumberController,
                decoration:
                    InputDecoration(labelText: "Enter the second number"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  navigateToDisplayNumbersScreens();
                },
                child: Text('Show Number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayNumbersScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  DisplayNumbersScreen({required this.firstNumber, required this.secondNumber});

  List<int> generateNumbers() {
    List<int> numbers = [];
    for (int i = firstNumber; i <= secondNumber; i++) {
      numbers.add(i);
    }
    return numbers;
  }

  @override
  Widget build(BuildContext context) {
    List<int> numbers = generateNumbers();
    return Scaffold(
      appBar: AppBar(
        title: Text('Display numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Numbers between $firstNumber and $secondNumber:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: numbers
                  .map((numbers) => Text(
                        numbers.toString(),
                        style: TextStyle(fontSize: 16.0),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
