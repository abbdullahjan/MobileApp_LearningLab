class Person {
  int id;
  String name;
  int age;

  Person(this.id, this.name, this.age);
}

class Student extends Person {
  double cgpa;
  String semester;
  String admissionDate;

  Student(
    super.id,
    super.name,
    super.age,
    this.cgpa,
    this.semester,
    this.admissionDate,
  );
}

class Teacher extends Person {
  double salary;
  String designation;
  String department;
  String joiningDate;

  Teacher(
    super.id,
    super.name,
    super.age,
    this.salary,
    this.designation,
    this.department,
    this.joiningDate,
  );
}

void main() {
  List<Person> people = [
    Student(1, "Abdullah", 21, 3.9, "SP24-BCS-142", "2024"),
    Student(2, "Ahmed", 22, 3.9, "SP24-BCS-149", "2024"),
    Student(3, "Student3", 20, 3.1, "SP25-BCS-182", "2025"),

    Teacher(4, "teacher1", 45, 150000, "Professor", "sub1", "2010"),
    Teacher(5, "teacher2", 38, 120000, "Assistant Professor", "sub2", "2015"),
    Teacher(6, "teacher3", 32, 90000, "Lecturer", "sub3", "2019"),
  ];

  print("Students:");

  for (var person in people) {
    if (person is Student) {
      if(person.cgpa>3.7){
      print(
        "ID: ${person.id}, Name: ${person.name}, "
        "Age: ${person.age}, CGPA: ${person.cgpa}, "
        "Semester: ${person.semester}, Admission: ${person.admissionDate}",
      );}
    }
  }
}

dynamic findPerson(List<Person> ls, int id){
  for (var person in ls) {
    if (id == person.id) {
      return person;
    }
  }
      return null;

}