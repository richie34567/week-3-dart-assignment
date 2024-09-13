import 'dart:math';
// Abstract class: Shape
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();

  // Abstract method to calculate perimeter
  double calculatePerimeter();

  // Method to display information about the shape
  void displayInfo() {
    print("Area: ${calculateArea()}");
    print("Perimeter: ${calculatePerimeter()}");
  }
}

// Subclass: Circle, which implements the abstract methods
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }
}

// Subclass: Rectangle, which implements the abstract methods
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

// Subclass: Triangle, which implements the abstract methods
class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

  @override
  double calculateArea() {
    // Using Heron's formula to calculate the area
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  double calculatePerimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  // Create instances of different shapes
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(4.0, 6.0);
  Triangle triangle = Triangle(3.0, 4.0, 5.0);

  // Display the area and perimeter of each shape
  circle.displayInfo();
  rectangle.displayInfo();
  triangle.displayInfo();
}
