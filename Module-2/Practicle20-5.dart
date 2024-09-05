//5. Write a program you have to print the Fibonacci series up to user given number
import 'dart:io';

void main() {
  print("Enter the number of terms in the Fibonacci series:");
  int n = int.parse(stdin.readLineSync()!);
  print("\nFibonacci Series:");
  fibonacciSeries(n);
}

void fibonacciSeries(int n) {
  int a = 0, b = 1;

  if (n >= 1) {
    print(a);
  }
  if (n >= 2) {
    print(b);
  }
  for (int i = 3; i <= n; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
