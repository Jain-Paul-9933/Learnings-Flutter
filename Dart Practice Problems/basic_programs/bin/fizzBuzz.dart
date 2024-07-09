import 'dart:io';

void fizzBuss() {
  print("Enter the limit");
  int limit = int.parse(stdin.readLineSync()!);

  for (int num = 1; num <= limit; num++) {
    if (num % 5 == 0 && num % 3 == 0) {
      print("\n FizzBuzz");
    } else if (num % 5 == 0) {
      print("\n Buzz");
    } else if (num % 3 == 0) {
      print("\n Fizz");
    } else {
      print("\n $num");
    }
  }
}
