void main() {
          // Exercise 1: Call the function to calculate sum and print the result
  double sum = calculateSum(5, 7);
  print("Exercise 1: The sum of 5 and 7 is: $sum");

          // Exercise 2: Call the function to check for prime numbers in a range
  print("Exercise 2: Prime numbers within the range 1 to 20: ");
  for (int i = 1; i <= 20; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }

          // Exercise 3: Call the function to reverse a string
  String reversedString = reverseString("hello");
  print("Exercise 3: Reversed string of 'hello' is: $reversedString");
}



          // Exercise 1: Function to calculate the sum of two numbers
double calculateSum(double num1, double num2) {
  return num1 + num2;
}



          // Exercise 2: Function to check if a number is prime
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}



            // Exercise 3: Function to reverse a string
String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join('');
}
