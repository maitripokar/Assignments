//Write a Program to check the given number is Positive, Negative. Write Program in dart
import 'dart:io';

void main() {
  var i;

  print("Enter a number:");
  i = int.parse(stdin.readLineSync()!);

  if (i > 0) {
    print("is positive : $i ");
  } else if (i < 0) {
    print("is negative : $i ");
  } else {
    print("is zero : $i");
  }
}
