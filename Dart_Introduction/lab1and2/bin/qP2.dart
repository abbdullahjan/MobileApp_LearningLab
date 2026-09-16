// *Simple Arithmetic Operations*
// Write a program that takes two numbers as input and outputs their sum, difference, product,
// and quotient.


import "dart:io";
// writing programs so that Switiching to different input modes can work through
void main(){
  print("Enter Number 1:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Number 2:");
  int num2 = int.parse(stdin.readLineSync()!);
  calculate(num1, num2);
}

void calculate(int num1, int num2){
  int sum = num1 + num2;
  int product = num1 * num2;
  double division = num1 / num2;
  int difference = num1 - num2;
  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("Division: $division");
}