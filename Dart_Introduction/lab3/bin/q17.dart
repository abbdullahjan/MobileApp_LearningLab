import 'dart:io';

void main(){
var student = Map<String, double>();
student["student1"] = 20;
student["student2"] = 30;
student["student3"] = 40;

print("initial map : $student");

print("Search for: ");
var name = stdin.readLineSync();
if(student.containsKey(name)){
  print("grade of $name : ${student[name]}");
}else{
  print("$name not found");
}



}