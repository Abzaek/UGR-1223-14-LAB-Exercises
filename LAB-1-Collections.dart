import 'dart:math';

void main() {

  // Exercise 1: List of favorite hobbies
  print("Exercise 1: List of favorite hobbies");
  List<String> hobbies = ["Reading", "Running", "Painting"];
  print("Original list: $hobbies");
  hobbies.add("Swimming");
  print("After adding: $hobbies");
  hobbies.remove("Running");
  print("After removing: $hobbies");
  hobbies.sort();
  print("After sorting: $hobbies");
  print("Is the list empty? ${hobbies.isEmpty}");



  // Exercise 2: Remove duplicates from a list of random numbers using a Set
  print("\nExercise 2: Remove duplicates from a list of random numbers");
  List<int> numbers = List.generate(10, (_) => Random().nextInt(10));
  print("Original list of numbers: $numbers");
  Set<int> uniqueNumbers = numbers.toSet();
  print("Unique numbers: $uniqueNumbers");



  // Exercise 3: Map of student names and their marks
  print("\nExercise 3: Map of student names and their marks");
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent("Mixa", () => 90);
  studentMarks.putIfAbsent("Ekram", () => 85);
  studentMarks.putIfAbsent("Fuad", () => 75);
  print("Student marks: $studentMarks");
  studentMarks.forEach((name, marks) => print("$name: $marks"));
  print("Does the map contain key 'Mixa'? ${studentMarks.containsKey('Mixa')}");



  // Exercise 4: Simulate a shopping cart using a map
  print("\nExercise 4: Simulate a shopping cart");
  Map<String, int> cart = {};
  cart["Apple"] = 2;
  cart["Banana"] = 3;
  cart["Orange"] = 1;
  print("Shopping cart: $cart");
  int totalPrice = calculateTotalPrice(cart);
  print("Total price: $totalPrice");
  cart.remove("Banana");
  print("Updated cart after removing 'Banana': $cart");



  // Exercise 5: Define a class Student and find average mark
  print("\nExercise 5: Define a class Student and find average mark");
  Student student = Student(name: "Danny", marks: [85, 90, 80]);
  double averageMark = student.calculateAverageMark();
  print("Average mark for ${student.name}: $averageMark");
}



// Exercise 4: Calculate total price of items in the shopping cart
int calculateTotalPrice(Map<String, int> cart) {
  int totalPrice = 0;
  cart.forEach((product, quantity) {
    totalPrice += getProductPrice(product) * quantity;
  });
  return totalPrice;
}



// Exercise 4: Get price of a product (dummy implementation)
int getProductPrice(String product) {
  Map<String, int> prices = {"Apple": 2, "Banana": 1, "Orange": 3};
  return prices[product] ?? 0;
}



// Exercise 5: Define a class Student with properties and methods
class Student {
  String name;
  List<int> marks;

  Student({required this.name, required this.marks});

  double calculateAverageMark() {
    if (marks.isEmpty) return 0.0;
    int sum = marks.reduce((a, b) => a + b);
    return sum / marks.length;
  }
}
