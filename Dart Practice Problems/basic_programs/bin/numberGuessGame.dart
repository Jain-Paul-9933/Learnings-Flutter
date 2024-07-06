import 'dart:io';
import 'dart:math';

void numberGuessGame() {
  Random random = new Random();
  int randomNumber = 1 + random.nextInt(100 - 1 + 1);
  print("Guess a number between 1 - 100 ");
  int guessedNumber = int.parse(stdin.readLineSync()!);

  if (randomNumber == guessedNumber) {
    print("Correct guess");
  } else {
    print("Wrong Guess , random number was $randomNumber");
  }
}
