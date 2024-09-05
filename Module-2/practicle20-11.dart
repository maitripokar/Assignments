import 'dart:io';

void main() {
  pattern1();
}

void pattern1() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    print('');
  }
}
