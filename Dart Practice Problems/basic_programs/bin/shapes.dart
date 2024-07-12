import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  @override
  String toString() => "This is a Shape.";
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;

  @override
  String toString() => "Circle with radius: $radius";
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double get area => width * height;

  @override
  double get perimeter => 2 * (width + height);

  @override
  String toString() => "Rectangle with width: $width, height: $height";
}

class Square extends Rectangle {
  Square(double side) : super(side, side); 

  @override
  String toString() => "Square with side";
}




void shape(){
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  Square square = Square(3);

  print(circle);
  print(rectangle);
  print(square);

  print("Circle area: ${circle.area}");
  print("Rectangle area: ${rectangle.area}");
  print("Square area: ${square.area}");

  print("Circle perimeter: ${circle.perimeter}");
  print("Rectangle perimeter: ${rectangle.perimeter}");
  print("Square perimeter: ${square.perimeter}");
}