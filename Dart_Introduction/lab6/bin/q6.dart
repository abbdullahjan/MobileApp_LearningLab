class Student {
  String name;
  int age;
  int marks;

  Student({
    required this.name,
    required this.age,
    required this.marks,
  });
}

void main() {
  List<Student> myObjects = [];

  myObjects.add(Student(name: 'st1', age: 25, marks: 55));
  myObjects.add(Student(name: 'st2', age: 30, marks: 50));
  myObjects.add(Student(name: 'st3', age: 27, marks: 40));
  myObjects.add(Student(name: 'st4', age: 22, marks: 45));

  myObjects
      .where((student) =>
          student.age > 25 &&
          student.marks >= 50 &&
          (student.name == 'Alice' || student.name == 'Bob'))
      .forEach((student) {
        print('Name: ${student.name}');
        print('Age: ${student.age}');
        print('Marks: ${student.marks}');
        print('----------------');
      });
}