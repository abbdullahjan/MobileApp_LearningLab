// *Check for Leap Year*
// Write a program that checks if a given year is a leap year or not.

import "dart:io";

void main() {
  print("Enter Year:");
  int year = int.parse(stdin.readLineSync()!);

  checkLeapYear(year);
}

void checkLeapYear(int year) {
  if (year % 400 == 0) {
    print("$year is a leap year");
  } else if (year % 100 == 0) {
    print("$year is not a leap year");
  } else if (year % 4 == 0) {
    print("$year is a leap year");
  } else {
    print("$year is not a leap year");
  }
}