void main(){
List<(String name, int age)> Person = [
  ("Person1", 20),
  ("Person2", 19),
  ("Person3", 18),
  ("Person4", 21),
  ("Person5", 16),
];

  print("Before Sorting");
for(var i in Person){
    print("Name: ${i.$1}, Age: ${i.$2}");
  }


Person.sort((a,b) => a.$2.compareTo(b.$2));

  print("After Sorting");
for(var i in Person){
    print("Name: ${i.$1}, Age: ${i.$2}");
  }  
}