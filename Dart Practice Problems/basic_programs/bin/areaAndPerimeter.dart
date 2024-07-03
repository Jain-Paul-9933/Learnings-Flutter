import 'dart:io';

void AreaAndPerimeter() {
  print('Enter the length and width of the rectangle');
  double? length = double.parse(stdin.readLineSync()!);
  double? width = double.parse(stdin.readLineSync()!);

  double area = length * width;

  double perimeter = 2 * (length + width);

  print("Area of the given rectangle is $area");

  print("Perimeter of the given rectangle is $perimeter");
}
