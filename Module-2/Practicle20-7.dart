//7. Write a program to print the number in reverse order
import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  print("\nNumber in reverse order:");
  print(reverseNumber(number));
}

int reverseNumber(int n) {
  int reversed = 0;

  while (n != 0) {
    int digit = n % 10;
    reversed = reversed * 10 + digit;
    n ~/= 10;
  }

  return reversed;
}
