// Write a program that takes the command line arguments of types string, integer and decimal
// value. In the case of a string, its length should be displayed, for an integer value, it should be
// multiplied by 100, and for a decimal value, we need to take its power of 3

import 'dart:io';
void main() {
  print("Enter elements separated by spaces:");

  String input = stdin.readLineSync()!;

  List<String> data = input.split(" ");

  printAns(data);
}

void printAns(List<String> dataList){
  for(String data in dataList){
  if(int.tryParse(data) != null){
    int res = (int.parse(data) * 100);
    print("Original Data: $data    |   Response:  $res");

  }
  else if(double.tryParse(data) != null){
    double res = double.parse(data) * double.parse(data) * double.parse(data);
    print("Original Data: $data    |   Response:  $res");

  }
  else{
    int res = data.length;
    print("Original Data: $data    |   Response:  $res");
  }}
}