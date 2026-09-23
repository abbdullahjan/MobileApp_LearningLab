void main(){
  List<(String name, int age, double grade)> student = [];
  
  student.add(("student1",22,90));
  student.add(("student2",23,21));
  student.add(("student3",22,70));
  student.add(("student4",24,93));
  student.add(("student5",20,60));

  for(var i in student){
    if(i.$3 > 75){
    print("Name: ${i.$1}, Age: ${i.$2}, Grade: ${i.$3}");
  }
  }
}