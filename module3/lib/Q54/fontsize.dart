import 'package:flutter/material.dart';

class FontSize extends StatefulWidget {
  @override
  _FontSizeState createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {
  double fontSize = 20.0;

  void increaseFontSize() {
    setState(() {
      fontSize += 3.0;
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 3.0) {
        fontSize -= 3.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Maitri Patel',
              style: TextStyle(fontSize: fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increaseFontSize,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decreaseFontSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
