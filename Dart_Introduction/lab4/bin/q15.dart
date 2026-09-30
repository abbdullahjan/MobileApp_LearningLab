// Given a list of integers:
// ```dart
// List<int> numbers = [10, 20, 30, 40, 50];
// ```
// Use Dart's destructuring syntax to extract the first two elements from the list into variables
// and print them. Also, assign the remaining elements to another list and print that as well.


void main() {
  List<int> numbers = [10, 20, 30, 40, 50];

  var [first, second, ...remaining] = numbers;

  print('First element: $first');
  print('Second element: $second');
  print('Remaining elements: $remaining');
}