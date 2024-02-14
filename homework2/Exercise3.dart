import 'dart:math';

abstract class Shape {
  double get area;

  double get perimeter;

  void printVlues();
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;

  @override
  void printVlues() {
    print("Area = $area");
    print("Perimeter = $perimeter");
  }
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;

  @override
  void printVlues() {
    print("Area = $area");
    print("Perimeter = $perimeter");
  }
}

void main() {
  var listShape = <Shape>[];
  Shape circle = new Circle(7);
  Shape box = new Square(4);

  listShape.add(circle);
  listShape.add(box);
  listShape.forEach((iteam) {
    iteam.printVlues();
  });
}
