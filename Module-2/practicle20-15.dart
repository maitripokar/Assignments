import 'dart:io';

void printPattern() {
  // Number of rows
  for (int i = 1; i <= 5; i++) {
    // Print leading spaces
    for (int j = 0; j < 5 - i; j++) {
      stdout.write(' ');
    }
    // Print numbers in decreasing order
    for (int k = i; k >= 1; k--) {
      stdout.write(k.toString());
    }
    // Move to the next line
    print('');
  }
}

void main() {
  printPattern();
}
