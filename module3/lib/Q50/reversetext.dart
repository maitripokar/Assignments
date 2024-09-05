import 'package:flutter/material.dart';

class reversetext extends StatefulWidget {
  const reversetext({super.key});

  @override
  State<reversetext> createState() => reversetextState();
}

class reversetextState extends State<reversetext> {
  TextEditingController Name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: Name,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "Enter your number here "),
              ),
              Text(
                "Reversed Text: ${ReverseText(Name.text)}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String ReverseText(String text1) {
  return String.fromCharCodes(text1.runes.toList().reversed);
}
