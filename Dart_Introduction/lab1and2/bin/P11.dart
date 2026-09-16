// Write a Dart program that defines a record type to store the name and age of a person.
// Create three records for different people and print out their details.

void main(){
  (String name, int age ) student1 = ("Abdullah", 22);
  (String name, int age ) student2 = ("Ahmed", 22);
  (String name, int age ) student3 = ("Rabbani", 22);

  print("Name: ${student1.$1} : Age: ${student1.$2}");
  print("Name: ${student2.$1} : Age: ${student2.$2}");
  print("Name: ${student3.$1} : Age: ${student3.$2}");
}
