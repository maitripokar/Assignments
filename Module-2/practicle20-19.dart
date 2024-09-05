import 'dart:io';

void pattern9() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write((i * i).toString() + ' ');
    }
    print('');
  }
}

void main() {
  pattern9();
}
