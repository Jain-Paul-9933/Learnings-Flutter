import 'dart:io';

void simpleCalculator() {
  print("Enter the first number");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number");
  int number2 = int.parse(stdin.readLineSync()!);
  print(
      "Enter the choice \n1)Addition\n2)Subtraction\n3)Multiplication\n4)Division");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      int sum = number1 + number2;
      print("Sum of $number1 and $number2 = $sum");
      break;
    case 2:
      int difference = number1 - number2;
      print("Difference of $number1 and $number2 = $difference");
      break;
    case 3:
      int product = number1 * number2;
      print("Product of $number1 and $number2 = $product");
      break;
    case 4:
      double quotient = number1 / number2;
      print("Quotient of $number1 and $number2 = $quotient");
      break;
    default:
      print("Please enter valid choice");
  }
}
