import 'dart:io';

void main() {
  var c;

  print("Enter the temperature in degrees Celsius:");
  c = double.parse(stdin.readLineSync()!);

  var fahrenheit = (c * 9 / 5) + 32;

  print("The temperature in Fahrenheit is $fahrenheit degrees");
}
