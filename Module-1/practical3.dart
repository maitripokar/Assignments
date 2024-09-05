//3. Write a program to make a square and cube of number.
import 'dart:io';

void main() {
  var a;
  print("Enter a number:");
  a = int.parse(stdin.readLineSync()!);

  var square = a * a;
  var cube = a * a * a;

  print("Square of $a is $square");

  print("Cube of $a is $cube");
}
