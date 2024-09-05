//Write a program you have to make a summation of first and last Digit.(E.g. 1234 ans:-5)

import 'dart:io';

void main() {
  print("Enter a number:");

  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  int sum = firstAndLastDigitSum(number);

  print("Sum of first and last digits is: $sum");
}

int firstAndLastDigitSum(int num) {
  int lastDigit = num % 10;
  int firstDigit = num;

  while (firstDigit >= 10) {
    firstDigit ~/= 10;
  }

  return firstDigit + lastDigit;
}
