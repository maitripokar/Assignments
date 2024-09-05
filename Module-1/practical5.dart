//5. Write a program to find the Area of Triangle
import 'dart:io';

void main() {
  var b, h;

  print("Enter the base of the triangle:");
  b = double.parse(stdin.readLineSync()!);

  print("Enter the height of the triangle:");
  h = double.parse(stdin.readLineSync()!);

  var area = 0.5 * b * h;

  print("The area of the triangle is $area");
}
