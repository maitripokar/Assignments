import 'dart:io';

void printPattern() {
  for (int i = 0; i < 5; i++) {
    // Print leading spaces for the current row
    for (int j = 0; j < 5 - i - 1; j++) {
      stdout.write('   '); // Three spaces for better alignment
    }
    // Print the asterisks with spaces in between
    for (int k = 0; k <= i; k++) {
      stdout.write('*');
      if (k < i) {
        stdout.write('    '); // Four spaces between asterisks
      }
    }
    // Move to the next line
    print('');
  }
}

void main() {
  printPattern();
}
