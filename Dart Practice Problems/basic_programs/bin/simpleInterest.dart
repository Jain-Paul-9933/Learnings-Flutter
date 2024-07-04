import 'dart:io';

void simpleInterest() {
  print("Please enter the principal amount");
  double principal = double.parse(stdin.readLineSync()!);
  print("Please enter the interest rate");
  double interestRate = double.parse(stdin.readLineSync()!);
  print("Please enter the number of years");
  double numberOfYears = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * interestRate * numberOfYears) / 100;

  print(
      "Simple Interest of $principal on rate of $interestRate% for $numberOfYears years is $simpleInterest.");
}
