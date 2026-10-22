// class Car {
// String? name;
// int? age;
// Car(name, age){
// this.name = '$name' ' Ali';
// this.age = age + 30;
// }
// }
// void main() {
// Car c = Car("Shahid", 45);
// print('${c.name} ${c.age}');
// }




//test
// class Point {
// int? x;
// int? y;
// Point(int a, int b) {
// x = a;
// y = b;
// }
// Point.fromOrigin() : this(10, 20); // Calls the main constructor
// Point.namedConstructor()
// }
// void main() {
// var point1 = Point(3, 4);
// var point2 = Point.fromOrigin();
// print('${point1.x} ${point1.y}');
// print('${point2.x} ${point2.y}');
// }




// more test 
class Teacher {
const Teacher(this.name);
final id = "10";
// String id1 = "10"; //error
final String name;
}
void main() {
var teacher = const Teacher("Osman");
print(teacher.name);
//teacher.name = "Zahid"; //error
}