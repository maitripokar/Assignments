//15. Write a program to find the Max number from the given three number using Nested If
import 'dart:io';

void main() {
  print("Enter three numbers:");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  int maxNumber;

  if (a >= b) {
    if (a >= c) {
      maxNumber = a;
    } else {
      maxNumber = c;
    }
  } else {
    if (b >= c) {
      maxNumber = b;
    } else {
      maxNumber = c;
    }
  }

  print("The maximum number among $a, $b, and $c is: $maxNumber");
}
