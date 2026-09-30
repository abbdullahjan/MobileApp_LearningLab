void printPersonInfo((String, int) person) {
var (name, age) = person;
print('$name is $age years old');
}
void main() {
printPersonInfo(('John', 25)); 
printPersonInfo(('Alice', 30)); 
printPersonInfo(('Bob', 22)); 
}