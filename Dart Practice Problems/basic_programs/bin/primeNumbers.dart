import 'dart:io';

void primeNumber() {
  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);

  if (number != 1 && number % 1 == 0 && number % number == 0) {
    print("$number is a prime number");
  } else {
    print("$number is not a prime number");
  }
}
