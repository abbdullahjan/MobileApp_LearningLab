// Write a program that checks if a given number is even or odd.

// writing programs such that Switiching to different input modes can work through

import "dart:io";
void main(){
    print("Enter Number 1:");
  int num = int.parse(stdin.readLineSync()!);
  evenOdd(num);
}

void evenOdd(int num){
  if(num%2 == 0){
    print("$num is even");
  }else{
    print("$num is Odd");
  }
}