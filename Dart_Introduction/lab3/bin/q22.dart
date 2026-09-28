void main() {
  Map<String, double> students = {
    "student1": 85.5,
    "student2": 92.0,
    "student3": 78.5,
    "student4": 88.0,
    "student5": 95.0,
  };

  printStudents(students);
}

void printStudents(Map<String, double> students) {
  for (var student in students.entries) {
    print("Name: ${student.key}, Grade: ${student.value}");
  }
}