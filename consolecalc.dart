import 'dart:io';

main() {
  //title

  print('simple calculator for integers.\n');

  //variable declarition
  var x, y;

  //getting the first operand from the user
  stdout.writeln('Enter first Operand: ');
  x = stdin.readLineSync();
  int numx = int.parse(x);
//display the menu of available operators
  stdout.writeln('choose desired operator from the menu below: ');
  stdout.writeln('1. + ');
  stdout.writeln('2. - ');
  stdout.writeln('3. * ');
  stdout.writeln('4. / ');
  stdout.writeln('5. % ');
//read and store the operator

  var operator = stdin.readLineSync();

  //fetch the second operand
  stdout.writeln('Enter second Operand: ');
  y = stdin.readLineSync();
  int numy = int.parse(y);

  switch (operator) {
    case '1':
      printAnswer(Add(numx, numy));
      break;

    case '2':
      printAnswer(Minus(numx, numy));
      break;

    case '3':
      printAnswer(Multiply(numx, numy));
      break;

    case '4':
      printAnswer(Divide(numx, numy));
      break;

    case '5':
      printAnswer(modulo(numx, numy));
      break;
    default:
      print('Invalid Operation!!');
  }
}
//functions for respective operations

int Add(int num1, int num2) => num1 + num2;
int Minus(int num1, int num2) => num1 - num2;
int Multiply(int num1, int num2) => num1 * num2;
dynamic Divide(int num1, int num2) => num1 / num2;
dynamic modulo(int num1, int num2) => num1 % num2;

// a method to print answer
void printAnswer(dynamic result) => print('Answer = $result');
