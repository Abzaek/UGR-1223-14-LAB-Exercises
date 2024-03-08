import "dart:io";
import "dart:async";

void main() {
  // Exercise 1
  String name = 'Abdulazez Zeinu';
  int age = 21;
  String favoriteColor = 'Black';

  print("My name is $name. I am $age years old. My favorite color is $favoriteColor");

  // Exercise 2
  const speedOfLight = 299792458; 
  
  print("Enter the distance light needs to travel (in meters):");
  
  try {
    double distance = double.parse(stdin.readLineSync()!);
    double timeInSeconds = distance / speedOfLight;
    print("Time taken for light to travel $distance meters: $timeInSeconds seconds");
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
