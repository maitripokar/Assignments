import 'dart:io';

void main() {
  var marks = new List.filled(5, 0);

  for (var i = 0; i < 5; i++) {
    print("Enter the marks for subject ${i + 1}:");
    marks[i] = int.parse(stdin.readLineSync()!);
  }

  var sum = marks.reduce((a, b) => a + b);
  var percentage = (sum / (5 * 100)) * 100;

  print("The sum of all subjects is $sum");
  print("The percentage is $percentage%");
}
