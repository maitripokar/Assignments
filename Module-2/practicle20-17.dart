import 'dart:io';

void pattern7() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 0; j < i; j++) {
      // Print 1 if (i + j) is even, otherwise print 0
      stdout.write((i + j) % 2 == 0 ? '1 ' : '0 ');
    }
    // Move to the next line after each row
    print('');
  }
}

void main() {
  pattern7();
}
