import 'dart:io';

void main() {
  // Exercise 1
  print("Exercise 1: Convert user input to an integer");
  try {
    stdout.write("Enter a number: ");
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print("Integer value: $number");
  } catch (e) {
    if (e is FormatException) {
      print("Error: Invalid input. Please enter a valid number.");
    } else {
      print("Error: $e");
    }
  }

  // Exercise 2
  print("\nExercise 2: Divide two numbers");
  divideNumbers(10, 0); // Division by zero
  divideNumbers(10, 2); // Valid division

  // Exercise 3
  print("\nExercise 3: Read a file from disk");
  try {
    File file = File("example.txt");
    String contents = file.readAsStringSync();
    print("File contents: $contents");
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: File not found or unable to read file.");
    } else {
      print("Error: $e");
    }
  }
}

// Exercise 2: Function to divide two numbers
void divideNumbers(int a, int b) {
  try {
    if (b == 0) {
      throw Exception("Division by zero is not allowed.");
    }
    double result = a / b;
    print("Result of $a divided by $b: $result");
  } catch (e) {
    print("Error: $e");
  }
}
