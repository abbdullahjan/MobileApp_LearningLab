void main(){
  (String name, int) student1 = ("student1", 22);
  (String, int) student2 = ("student2", 23);
  (String, int) student3 = ("student3", 24);

  print("Name: ${student1.$1} Age: ${student1.$2}");
  print("Name: ${student2.$1} Age: ${student1.$2}");
  print("Name: ${student3.$1} Age: ${student1.$2}");
}