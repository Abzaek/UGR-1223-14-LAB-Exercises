import 'dart:math';
// Exercise 1: Rectangle class
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);
  double calculateArea() {
    return width * height;
  }
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Exercise 2: Product class
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

// Exercise 3: Abstract Shape class
abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  // Override calculateArea method
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  // Override calculateArea method
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {

  // Exercise 1: Rectangle
  Rectangle rectangle = Rectangle(5, 7);
  print("Exercise 1: Area of Rectangle: ${rectangle.calculateArea()}");
  print("Exercise 1: Perimeter of Rectangle: ${rectangle.calculatePerimeter()}");


  // Exercise 2: Product
  Product product = Product("Phone", 500, 2);
  print("Exercise 2: Total cost of Product: ${product.calculateTotalCost()}");


  // Exercise 3: Shape subclasses
  Circle circle = Circle(5);
  print("Exercise 3: Area of Circle: ${circle.calculateArea()}");

  Square square = Square(4);
  print("Exercise 3: Area of Square: ${square.calculateArea()}");
}
