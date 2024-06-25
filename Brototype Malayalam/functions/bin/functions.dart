// void main() {
//   sum();
//   sumParams(5, 10);
//   var sum1 = sumReturn(7, 9);
//   print(sum1);
//   sumRequired(firstNumber: 100, secondNumber: 200, third: 50);
//   // anonyms function passed as arguments.
//   sumFunction(23, 24, (int first, int second) {
//     print('Function sum ${first + second}');
//   });
//   sumFunc();
//   print("After invoking future function");
// }

// void sum() {
//   print(2 + 3);
// }

// void sumParams(int a, int b) {
//   print('${a + b}');
// }

// int sumReturn(int a, int b) {
//   return a + b;
// }

// //named parameters-required,optional,default.
// void sumRequired(
//     {required int firstNumber, required int secondNumber, int third = 0}) {
//   print(firstNumber + secondNumber + third);
// }

// //passing fun() as parameter

// void sumFunction(int a, int b, void Function(int, int) customSum) {
//   customSum(a, b);
// }

// Future Functions

Future<void> main() async {
  await sumFunc();
  print("After Future");
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print("Sum Future ${a + b}");
  return a + b;
}

Future<void> sumFunc() async {
  await sumFuture(33, 44);
  print('In sum function');
}
