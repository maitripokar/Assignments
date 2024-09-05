//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven)

import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("\nMenu:");
    print("1. Calculate Area of Triangle");
    print("2. Calculate Area of Rectangle");
    print("3. Calculate Area of Circle");
    print("4. Exit");
    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    double base, height, length, width, radius, area;

    switch (choice) {
      case 1:
        print("Enter base of the triangle:");
        base = double.parse(stdin.readLineSync()!);
        print("Enter height of the triangle:");
        height = double.parse(stdin.readLineSync()!);
        area = 0.5 * base * height;
        print("Area of the triangle: $area square units");
        break;
      case 2:
        print("Enter length of the rectangle:");
        length = double.parse(stdin.readLineSync()!);
        print("Enter width of the rectangle:");
        width = double.parse(stdin.readLineSync()!);
        area = length * width;
        print("Area of the rectangle: $area square units");
        break;
      case 3:
        print("Enter radius of the circle:");
        radius = double.parse(stdin.readLineSync()!);
        area = pi * radius * radius;
        print("Area of the circle: $area square units");
        break;
      case 4:
        print("Exiting the program...");
        return;
      default:
        print("Invalid choice! Please enter a valid option (1-4).");
    }
  }
}
