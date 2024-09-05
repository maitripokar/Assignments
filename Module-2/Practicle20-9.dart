//9 Write a program make a summation of given number(E.g. 1523 ans :-11)
import 'dart:io';

void main() {
  print("Enter a number:");

  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  int sum = sumOfDigits(number.abs());

  if (number < 0) {
    sum *= -1;
  }

  print("Sum of digits is: $sum");
}

int sumOfDigits(int num) {
  int sum = 0;

  while (num != 0) {
    sum += num % 10;
    num ~/= 10;
  }

  return sum;
}
