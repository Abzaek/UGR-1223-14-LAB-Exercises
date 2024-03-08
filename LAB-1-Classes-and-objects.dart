// Exercise 1: Person class
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name, Age: $age, Address: $address");
  }
}

void main() {
  // Exercise 1: Create objects of the Person class and access/modify their attributes
  Person person1 = Person("Abdulazez", 25, "Agaro");
  Person person2 = Person("Bisrat", 30, "Piassa");

  print("Exercise 1:");
  person1.displayInfo();
  person2.displayInfo();

  // Modify attributes
  person1.age = 26;
  person2.address = "Dukem";

  print("Modified Info:");
  person1.displayInfo();
  person2.displayInfo();

  // Exercise 2: Define a Student class that inherits from Person
  // and adds properties like roll number and marks
  print("\nExercise 2:");
  Student student1 = Student("Abdulazez", 20, "6 Kilo", "UGR-1223-14", [85, 90, 88, 92]);
  Student student2 = Student("Milki", 22, "5 Kilo", "UGR-3454-10", [78, 85, 80, 88]);

  student1.displayInfo();
  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");

  student2.displayInfo();
  print("Total Marks: ${student2.calculateTotalMarks()}");
  print("Average Marks: ${student2.calculateAverageMarks()}");
}

// Exercise 2: Student class inheriting from Person
class Student extends Person {
  String rollNumber;
  List<double> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  double calculateTotalMarks() {
    double total = 0;
    for (double mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    double total = calculateTotalMarks();
    return total / marks.length;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
  }
}
