// no.4 Write a program to find the Area of Circle
import 'dart:io';

void main() {
  var radius;
  const pi = 3.14159;

  print("Enter the radius of the circle:");
  radius = double.parse(stdin.readLineSync()!);

  var area = pi * radius * radius;

  print("The area of the circle is $area");
}
