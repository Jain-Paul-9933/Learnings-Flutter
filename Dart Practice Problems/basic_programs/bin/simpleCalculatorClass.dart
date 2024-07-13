import 'dart:io';

class Calculator {
  double calculate(double num1, String operator, double num2) {
    switch (operator) {
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        if (num2 == 0) {
          throw Exception("Division by zero is not allowed");
        }
        return num1 / num2;
      default:
        throw Exception("Invalid operator");
    }
  }
}

void simpleCalculatorClass() {
  // Get user input
  print("Enter first number: ");
  var num1 = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /): ");
  var operator = stdin.readLineSync()!;

  print("Enter second number: ");
  var num2 = double.parse(stdin.readLineSync()!);

  // Create a calculator object and perform calculation
  var calculator = Calculator();
  var result = calculator.calculate(num1, operator, num2);

  // Display result
  print("Result: $result");
}
