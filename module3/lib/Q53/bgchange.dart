import 'dart:math';

import 'package:flutter/material.dart';

class bgchange extends StatefulWidget {
  const bgchange({super.key});

  @override
  State<bgchange> createState() => _bgchangeState();
}

class _bgchangeState extends State<bgchange> {
  Color bgcolor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgcolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bgcolor =
                          Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                              .withOpacity(1.0);
                    });
                  },
                  child: Text("Change Background Color")),
            ],
          ),
        ),
      ),
    );
  }
}
