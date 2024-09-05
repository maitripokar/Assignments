//Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Driven)
import 'dart:io';

void main() {
  while (true) {
    print("\Menu:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");
    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    double num1, num2, result;

    switch (choice) {
      case 1:
        print("Enter first number:");
        num1 = double.parse(stdin.readLineSync()!);
        print("Enter second number:");
        num2 = double.parse(stdin.readLineSync()!);
        result = num1 + num2;
        print("Result: $result");
        break;
      case 2:
        print("Enter first number:");
        num1 = double.parse(stdin.readLineSync()!);
        print("Enter second number:");
        num2 = double.parse(stdin.readLineSync()!);
        result = num1 - num2;
        print("Result: $result");
        break;
      case 3:
        print("Enter first number:");
        num1 = double.parse(stdin.readLineSync()!);
        print("Enter second number:");
        num2 = double.parse(stdin.readLineSync()!);
        result = num1 * num2;
        print("Result: $result");
        break;
      case 4:
        print("Enter dividend:");
        num1 = double.parse(stdin.readLineSync()!);
        print("Enter divisor:");
        num2 = double.parse(stdin.readLineSync()!);
        if (num2 != 0) {
          result = num1 / num2;
          print("Result: $result");
        } else {
          print("Error: Division by zero!");
        }
        break;
      case 5:
        print("Exiting the program...");
        return;
      default:
        print("Invalid choice! Please enter a valid option (1-5).");
    }
  }
}
