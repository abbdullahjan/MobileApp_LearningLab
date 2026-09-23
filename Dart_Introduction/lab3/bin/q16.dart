void main(){
var student = Map<String, double>();
student["student1"] = 20;
student["student2"] = 30;
student["student3"] = 40;

print("initial map : $student");

//updatign
student["student1"] = 100;

// removing 
student.remove("student1");
print("Final map : $student");


}