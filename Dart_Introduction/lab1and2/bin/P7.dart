// *Reverse a String*
// Write a program to reverse a string entered by the user.

import "dart:io";
void main(){
  print("enter string: ");
  String str = stdin.readLineSync()!;
  print(str.split('').reversed.join());  
}