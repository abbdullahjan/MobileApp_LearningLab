// *Multiplication Table*
// Write a program that generates the multiplication table for a given number.

import "dart:io";

void main() {
  print("Enter Number:");
  int num = int.parse(stdin.readLineSync()!);

  multiplicationTable(num);
}

void multiplicationTable(int num) {
  for (int i = 1; i <= 10; i++) {
    int result = num * i;
    print("$num x $i = $result");
  }
}