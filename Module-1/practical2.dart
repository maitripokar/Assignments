//2. Write a program to make addition, Subtraction, Multiplication and Division of Two Numbers.
import 'dart:io';

void main() {
  var a, b;
  print("Enter the Value Of a: ");
  a = int.parse(stdin.readLineSync()!);

  print("Enter the Value Of b: ");
  b = int.parse(stdin.readLineSync()!);
  var sub = a - b;
  var mul = a * b;
  var add = a + b;
  var div = a / b;

  print("subtraction:$sub");
  print("Multiplication:$mul");
  print("Addition:$add");
  print("Division:$div");
}
