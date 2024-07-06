import 'dart:io';

void LengthOfString() {
  print("Enter a string");
  String? string = stdin.readLineSync()!;
  int stringLength = string.length;
  print("Length of string $string is $stringLength");
}

void SubString() {
  print("Enter a string");
  String? string = stdin.readLineSync()!;
  print("Enter the starting and ending of the sub string to slice the string");
  int startPos = int.parse(stdin.readLineSync()!);
  int endPos = int.parse(stdin.readLineSync()!);

  String subString = string.substring(startPos, endPos);

  print("Substring: $subString");
}

void stringToUpper() {
  print("Enter the string");
  String? string = stdin.readLineSync()!;

  String? stringUpperCase = string.toUpperCase();

  print("Uppercase: $stringUpperCase");
}

void stringToLower() {
  print("Enter the string");
  String? string = stdin.readLineSync()!;

  String? stringLowerCase = string.toLowerCase();

  print("Lowercase: $stringLowerCase");
}

void stringStartsWith() {
  print("Enter the string");
  String? string = stdin.readLineSync()!;
  print("Enter the sub-string");
  String? subString = stdin.readLineSync()!;

  print(string.startsWith(subString));
}

void stringEndsWith() {
  print("Enter the string");
  String? string = stdin.readLineSync()!;
  print("Enter the sub-string");
  String? subString = stdin.readLineSync()!;

  print(string.endsWith(subString));
}