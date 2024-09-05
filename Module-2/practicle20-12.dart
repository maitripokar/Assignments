import 'dart:io';

void pattern2() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j.toString() + ' ');
    }
    print('');
  }
}

void main() {
  pattern2();
}
