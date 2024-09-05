//7. Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';

void main() {
  var c;

  print("Enter the temperature in degrees Celsius:");
  c = double.parse(stdin.readLineSync()!);

  var f = (c * 9 / 5) + 32;

  print("The temperature in Fahrenheit is $f degrees");
}
