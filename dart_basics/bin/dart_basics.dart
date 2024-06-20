import 'dart:io';

void main() {
  // print("Hello,World");

  // Variables
  // --------------

  // var name = 'Jain Paul';

  // var year = 2024;

  // var antennaDiameter = 3.7;

  // var planets = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // var image = {
  //   'tags': ['saturn'],
  //   'url': '//path/to/saturn.jpg'
  // };

  //Input & Output
  // ----------------

  // var nameHolder = stdin.readLineSync();
  // print('Hello $nameHolder');

  print("Enter two numbers");
  var input1 = stdin.readLineSync();
  var input2 = stdin.readLineSync();

  var number1 = int.parse(input1!);
  var number2 = int.parse(input2!);

  print("Sum of $input1 and $input2 = ${number1 + number2}");
}
