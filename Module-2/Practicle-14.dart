//14. Write a program to find the Max number from the given three number using Ternary Operator
import 'dart:io';

void main() {
  // Prompt the user to enter three numbers
  print("Enter three numbers:");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  int maxNumber = (a >= b && a >= c) ? a : (b >= c ? b : c);

  print("The maximum number among $a, $b, and $c is: $maxNumber");
}
