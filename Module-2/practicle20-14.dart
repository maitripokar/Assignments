import 'dart:io';

void printPattern() {
  // Number of rows
  for (int i = 1; i <= 5; i++) {
    // Print leading spaces
    for (int j = 0; j < 5 - i; j++) {
      stdout.write('  '); // Two spaces for better alignment
    }
    for (int k = 0; k < i; k++) {
      stdout.write('* ');
    }
    // Move to the next line
    print('');
  }
}

void main() {
  printPattern();
}
