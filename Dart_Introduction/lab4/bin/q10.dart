// Write a Dart program that generates a list of the first 10 Fibonacci numbers using the
// **collection `for`**. Use the **collection `if`** to include only numbers greater than 10 in the
// final list. Print the result

// void main(){
//   List list = [0,1];
//   List mylist = list;

//   list = [...list, for(int i = 2; i <10; i++) list[i-1] + list[i+2]];
//   print(list);
// }

void main() {
// Generate the first 10 Fibonacci numbers
List<int> fibonacci = [0, 1];
for (int i = 2; i < 10; i++) {
fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
}
List<int> filteredFibonacci = [
for (var num in fibonacci)
if (num > 10) num
];
print('First 10 Fibonacci numbers: $fibonacci');
print('Fibonacci numbers greater than 10: $filteredFibonacci');
}