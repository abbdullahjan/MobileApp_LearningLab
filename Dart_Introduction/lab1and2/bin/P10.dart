// *Count Digits in a Number*
// Write a program that counts the number of digits in an integer entered by the user.

import "dart:io";

void main() {
  print("Enter Number:");
  int num = int.parse(stdin.readLineSync()!);

  countDigits(num);
}

void countDigits(int num) {
  int count = num.abs().toString().length;

  print("Number of Digits: $count");
}