/*16.Write a program user enter the 5 subjects mark. You have to make a
total and find the percentage. percentage > 75 you have to print
“Distinction” percentage > 60 and percentage <= 75 you have to
print “First class” percentage >50 and percentage <= 60 you have to
print “Second class” percentage > 35 and percentage <= 50 you have to
print “Pass class” Otherwise print “Fail”*/
import 'dart:io';

void main() {
  List<int> marks = [];
  int total = 0;
  double percentage = 0.0;

  print("Enter marks for 5 subjects:");
  for (int i = 0; i < 5; i++) {
    print("Enter marks for subject ${i + 1}:");
    int mark = int.parse(stdin.readLineSync()!);
    marks.add(mark);
    total += mark;
  }

  percentage = (total / (5 * 100)) * 100;

  String grade;
  if (percentage > 75) {
    grade = "Distinction";
  } else if (percentage > 60) {
    grade = "First class";
  } else if (percentage > 50) {
    grade = "Second class";
  } else if (percentage > 35) {
    grade = "Pass class";
  } else {
    grade = "Fail";
  }

  print("Total marks: $total");
  print("Percentage: $percentage%");
  print("Grade: $grade");
}
