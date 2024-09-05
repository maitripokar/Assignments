//9. Write a Program to show swap of two No's without using third variable.
import 'dart:io';

void main() {
  var a, b;

  print("Enter the value of a:");
  a = int.parse(stdin.readLineSync()!);

  print("Enter the value of b:");
  b = int.parse(stdin.readLineSync()!);

  print("Before swapping: a = $a, b = $b");

  a = a + b;
  b = a - b;
  a = a - b;

  print("After swapping: a = $a, b = $b");
}
