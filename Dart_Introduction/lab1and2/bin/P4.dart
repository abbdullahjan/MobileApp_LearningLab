// *Find the Largest of Three Numbers*
// Write a program that takes three numbers as input and outputs the largest number.

import "dart:io";

// writing programs so that switching to different input modes can work
void main() {
  print("Enter Number 1:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter Number 2:");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter Number 3:");
  int num3 = int.parse(stdin.readLineSync()!);

  findLargest(num1, num2, num3);
}

void findLargest(int num1, int num2, int num3) {
  int largest = num1;

  if (num2 > largest) {
    largest = num2;
  }

  if (num3 > largest) {
    largest = num3;
  }

  print("Largest Number: $largest");
}