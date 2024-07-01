// import 'dart:io';
// class Num {
//   int num = 10;
// }

// class Person {
//   String? name;
//   int? age;

// constructor

// Person(String name, [int age = 18]) {
//   this.name = name;
//   this.age = age;
// }

// (or)

//   Person(this.name, [this.age = 18]);

//   //named constructor
//   Person.guest() {
//     name = 'Guest';
//     age = 50;
//   }

//   void showOutput() {
//     print(name);
//     print(age);
//   }
// }

class X {
  final name;
  static const int age = 10;

  X(this.name);
}

main() {
  //Hello World

  // print("hello world");
  // var firstName = "Jain";
  // String lastName = "Paul";

  // print(firstName + " " + lastName);

  //Input and Output

  // stdout.writeln("What is your name ?");
  // String? name = stdin.readLineSync();
  // print('My name is $name');

  //Data types

  // int amount1 = 100;
  // var amount2 = 200;

  // print('Amount1: $amount1 | Amount2: $amount2 \n');

  // String name1 = "Jain";
  // var name2 = "Paul";

  // print('My name is : $name1 $name2 \n');

  // bool isItTrue1 = true;
  // var isItTrue2 = false;

  // print('isItTrue1: $isItTrue1 | isItTrue2: $isItTrue2 \n');

  // dynamic weakVairable = 100;

  // print('WeakVairable 1: $weakVairable \n');

  // weakVairable = "Dart Programming";

  // print('WeakVairable 2: $weakVairable \n');

  // weakVairable = null;
  // print(weakVairable);

  //String,Type Conversion, Constant, null

  // var s1 = 'Single quotes work well for string literals.';
  // var s2 = 'Double quotes work just as well.';
  // var s3 = 'It\'s easy to escape the string delimiter';
  // var s4 = "It's even easier to use the other delimiter";

  // print(s1);
  // print(s2);
  // print(s3);
  // print(s4);
  // print('');

  // var s = r'In a raw string, not even \n gets special treatment';
  // print(s);

  // var age = 35;
  // var str = "My age is : $age";
  // print(str);

//   var s1 = '''
// You can create
// multi-line strings like this one.
// ''';

//   var s2 = """
// This is also a
// multi-line string.
// """;

//   print(s1);
//   print(s2);

// String -> int
  // var one = int.parse('1');
  // assert(one == 1);

  // //String -> double
  // var onePointOne = double.parse('1.1');
  // assert(onePointOne == 1.1);

  // // int -> String
  // String oneAsString = 1.toString();
  // assert(oneAsString == '1');

  // //double -> String
  // String piAsString = 3.14159.toStringAsFixed(2);
  // assert(piAsString == "3.14159");

//   const aConstNum = 0;
//   const aConstBool = true;
//   const aConstString = 'a constant string';

//   print(aConstNum);
//   print(aConstBool);
//   print(aConstString);

//   print(aConstNum.runtimeType);
//   print(aConstBool.runtimeType);
//   print(aConstString.runtimeType);

  // int? num = null;
  // print(num);

  // Operators
// // arithmetic operator
//   int num = 10 + 22;
//   num = num - 2;
//   print(num);

//   num = num % 5;
//   print(num);

// // relational ==,!=,>=,<=
//   if (num == 0) {
//     print('Zero');
//   }

//   num = 100;
//   num *= 2; //num=num*2;

//   print(num);

//   //unary operator
//   ++num;
//   num--;
//   num += 1;
//   num -= 1;

//   print(num);

//   //logical &&  and logical ||
//   if (num > 200 && num < 203) {
//     print("200 to 203");
//   }

//   // != Not Equal
//   if (num != 100) {
//     print('num is not equal to 100');
//   }

// Null Aware Operator
// (?.),(??),(??=)

  // var n =Num();

  // int? number;

  // number = n?.num ?? 0;

  // int? number;

  // print(number ??= 100);

  //Ternary operator

  // int x = 101;

  // var result = x % 2 == 0 ? 'Even' : 'Odd';

  // print(result);

//Type test

  // var x = 100.0;

  // if (x is int) {
  //   print('integer');
  // }

// Conditional Statement
// If Else Statement
  // int number = 9;

  // if (number % 2 == 0) {
  //   print('Even');
  // } else if (number % 3 == 0) {
  //   print("Odd");
  // } else {
  //   print('Confused');
  // }

// // Switch Statement

//   int number = 0;

//   switch (number) {
//     case 0:
//       print('Even');
//       break;
//     case 1:
//       print('Odd');
//       break;
//     default:
//       print("Confused");
//   }

// Loops
// standard for loop

  // for (var i = 1; i <= 10; ++i) {
  //   print(i);
  // }

  // for-in loop
  // var numbers = [1, 2, 3, 4];

  // for (var n in numbers) {
  //   print(n);
  // }

  // forEach loop

  // numbers.forEach((n) => print(n));

  // while loop
  // int num = 5;

  // while (num > 0) {
  //   print(num);
  //   num -= 1;
  // }

  // do-while loop

  // do {
  //   print(num);
  //   num -= 1;
  // } while (num > 0);

  //break and continue

  // for (var i = 0; i < 10; i++) {
  //   if (i > 5) break;
  //   print(i);
  // }

  // for (var i = 0; i < 10; i++) {
  //   if (i % 2 == 0) continue;
  //   print("Odd $i");
  // }

  // Collection [List,Set,Map]
  //List

  // List<String> names = const ['Jack', 'Jill'];

  // names[1] = 'Mark';

  // var fruits = ['Apple', 'Orange'];

  // print(names[0]);
  // print(fruits.length);

  // var names2 = [...names];

  // for (var n in names2) {
  //   print(n);
  // }

  // Set

  // var halogens = {'fluorine', 'chlorine'};

  // for (var x in halogens) {
  //   print(x);
  // }

  // var halogens = <String>{};

  // Set<String> names = {};
  // print(halogens.runtimeType);
  // print(names.runtimeType);

  // Map

  // var gifts = {
  //   //Key :  Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings'
  // };

  // var gifts1 = {
  //   //Key :  Value
  //   1: 'partridge',
  //   2: 'turtledoves',
  //   5: 'golden rings'
  // };

  // print(gifts['fifth']);
  // print(gifts1[2]);

  // var gifts2 = Map();

  // gifts2['first'] = 'Mango';

  // print(gifts2['first']);

  //Functions
  // showOutput(square(2));
  // showOutput(square(2.5));

  // Anonyms Function

  // var list = ['apples', 'bananas', 'oranges'];

  // list.forEach((item) {
  //   print(item);
  // });

  // Parameters and Arguments in Functions
// Positional Arguments an parameters
  // print(sum(2, 2));
// Named Parameters and arguments
  // print(sum(num2: 4, num1: 2));
  // print(sum(num2: 10, 5));

  //Class and Object

  // Person person1 = Person('Jain Paul', 25);
  // person1.showOutput();

  // var person2 = Person('Ebin', 27);
  // person2.showOutput();

  // var person3 = Person.guest();
  // person3.showOutput();

  var x = X('Jain');
  print(x.name);

  x.name = 'Paul';
  print(x.name);
}

// Functions

// dynamic square(var num) {
//   return num * num;
// }

// void showOutput(var msg) {
//   print(msg);
// }

// Arrow Function

// dynamic square(var num) => num * num;

// void printF(item) {
//   print(item);
// }

// Parameters and Arguments in Functions
// Positional Arguments an parameters

// dynamic sum(var num1, var num2) => num1 + num2;

// Named Parameters and arguments

// dynamic sum({var num1, var num2}) => num1 + num2;

// dynamic sum(var num1, {var num2}) => num1 + num2;
