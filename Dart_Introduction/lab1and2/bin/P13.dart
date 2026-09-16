// *Sort Person Records by Age*
// Create a list of person records with fields name and age.
// Sort the list by age in ascending order.

void main() {
  List<(String, int)> people = [
    ("Abdullah", 21),
    ("Ahmed", 25),
    ("Rabbani", 19),
    ("Abubakr", 30),
    ("Musa", 22),
  ];

  print("Before Sorting:");

  for (var person in people) {
    print("Name: ${person.$1}, Age: ${person.$2}");
  }

  people.sort((a, b) => a.$2.compareTo(b.$2));

  print("\nAfter Sorting:");

  for (var person in people) {
    print("Name: ${person.$1}, Age: ${person.$2}");
  }
}