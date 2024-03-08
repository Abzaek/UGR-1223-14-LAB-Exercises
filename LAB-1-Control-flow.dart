import 'dart:io';

void main() {
  exercise1();
  exercise2();
  exercise3();
  exercise4();
}


void exercise1() {
  print('EVEN OR ODD DETECTOR');
  print('please enter the number: ');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 != 0) {
    print('It is odd');
  } else {
    print('It is even');
  }
}

void exercise2() {
  print('THE FIRST TEN NATURAL NUMBERS');
  
  for (int i = 1; i < 11; i++) {
    print(i);
  }
}



void exercise3() {
  print("Simple Calculator");
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  double result = 0;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Cannot divide by zero");
        break;
      }
      break;
    default:
      print("Invalid operation");
  }
  print("Result: $result");
}



void exercise4() {
  print("Enter your grade:");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade;

  switch (grade) {
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
      letterGrade = "A+";
      break;
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
      letterGrade = "A";
      break;
    case 80:
    case 81:
    case 82:
      letterGrade = "A-";
      break;
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
      letterGrade = "B+";
      break;
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      letterGrade = "B";
      break;
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
      letterGrade = "C";
      break;
    default:
      letterGrade = "F";
      break;
  }

  print("Your letter grade is: $letterGrade");
}
