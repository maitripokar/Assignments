import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  @override
  _ColorState createState() => _ColorState();
}

class _ColorState extends State<ColorScreen> {
  Color? selectedColor = Color(0x5F4B8BFF);

  void setColor(Color? color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: selectedColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RadioListTile(
                title: Text('Purple'),
                value: Color(0x5F4B8BFF),
                groupValue: selectedColor,
                onChanged: setColor,
              ),
              RadioListTile(
                title: Text('Gray'),
                value: Color.fromARGB(255, 131, 176, 199),
                groupValue: selectedColor,
                onChanged: setColor,
              ),
              RadioListTile(
                title: Text('cyan'),
                value: Color.fromARGB(255, 59, 93, 95),
                groupValue: selectedColor,
                onChanged: setColor,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
