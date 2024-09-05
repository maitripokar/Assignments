import 'package:flutter/material.dart';

class ImagesAroundText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/1.jpeg',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'assets/2.jpeg',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Animals and Birds',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/3.jpeg',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'assets/4.jpeg',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
