//6. Write a program to find the simple Interest.

import 'dart:io';

void main() {
  var p, r, t;

  print("Enter the Amount :");
  p = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest:");
  r = double.parse(stdin.readLineSync()!);

  print("Enter the time period (in years):");
  t = double.parse(stdin.readLineSync()!);

  var interest = (p * r * t) / 100;

  print("The simple interest is $interest");
}
