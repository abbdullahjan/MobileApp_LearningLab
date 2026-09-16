// Write a program to calculate the simple interest using the formula
// SI = (P * R * T) / 100, where P is the principal, R is the rate,
// and T is the time.

import "dart:io";

// writing programs so that switching to different input modes can work
void main() {
  print("Enter Principal (P):");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter Rate (R):");
  double r = double.parse(stdin.readLineSync()!);

  print("Enter Time (T):");
  double t = double.parse(stdin.readLineSync()!);

  calculateSI(p, r, t);
}

void calculateSI(double p, double r, double t) {
  double si = (p * r * t) / 100;

  print("Simple Interest: $si");
}