import 'package:flutter/material.dart';

class ColorAdjustmentScreen extends StatefulWidget {
  @override
  _ColorAdjustmentScreenState createState() => _ColorAdjustmentScreenState();
}

class _ColorAdjustmentScreenState extends State<ColorAdjustmentScreen> {
  double pinkValue = 0.0;
  double purpleValue = 0.0;
  double cyanValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Adjustment'),
      ),
      body: Container(
        color: Color.fromARGB(
          255,
          (pinkValue + purpleValue / 2).round(), // Pinkish tone
          (purpleValue + cyanValue / 2).round(), // Purplish tone
          (cyanValue + pinkValue / 2).round(), // Cyan tone
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: pinkValue,
                onChanged: (value) {
                  setState(() {
                    pinkValue = value;
                  });
                },
                min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Pink: ${pinkValue.round()}',
              ),
              Slider(
                value: purpleValue,
                onChanged: (value) {
                  setState(() {
                    purpleValue = value;
                  });
                },
                min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Purple: ${purpleValue.round()}',
              ),
              Slider(
                value: cyanValue,
                onChanged: (value) {
                  setState(() {
                    cyanValue = value;
                  });
                },
                min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Cyan: ${cyanValue.round()}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
