import 'dart:io';

void pattern8() {
  int num = 1;
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(num.toString() + ' ');
      num++;
    }
    print('');
  }
}

void main() {
  pattern8();
}
