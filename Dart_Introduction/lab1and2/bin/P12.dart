// *Working with Lists of Records*
// Define a list of records to store information about students.
// Each record contains name, age, and grade.

void main() {
  List<(String, int, double)> students = [
    ("Abdullah", 21, 96.5),
    ("Ahmed", 20, 96.5),
    ("Rabbani", 21, 91.0),
    ("Abubakr", 20, 87.5),
    ("Musa", 21, 93.0),
  ];

  for (var student in students) {
    print("Name: ${student.$1}, Age: ${student.$2}, Grade: ${student.$3}");
  }
}