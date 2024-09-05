import 'dart:io';

void pattern3() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i.toString() + ' ');
    }
    print('');
  }
}

void main() {
  pattern3();
}
