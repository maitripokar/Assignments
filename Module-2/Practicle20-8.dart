//Write a program to find out the max from given number (E.g. No: -1562 Max number is 6

import 'dart:io';

void main() {
  print("Enter a number:");

  String input = stdin.readLineSync()!;

  int maxDigit = findMaxDigit(input);

  print("Max number is $maxDigit");
}

int findMaxDigit(String input) {
  List<String> digits = input.replaceAll('-', '').split('');

  int maxDigit = 0;
  for (String digit in digits) {
    int currentDigit = int.parse(digit);
    if (currentDigit > maxDigit) {
      maxDigit = currentDigit;
    }
  }

  return maxDigit;
}
