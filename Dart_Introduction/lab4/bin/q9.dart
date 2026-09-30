// Write a Dart program that creates a **set** of favorite colors. The set should initially contain
// `'Blue'`, `'Green'`, and `'Red'`. Use the **collection `if`** to include `'Purple'` only if a
// boolean variable `likesPurple` is `true`. Print the final set of favorite colors.

void main() {
Set<String> favoriteColors = {'Blue', 'Green', 'Red'};
bool likesPurple = true; // Change to false to test the other condition
Set<String> finalColors = {...favoriteColors, if (likesPurple) 'Purple'};
print('Final set of favorite colors: $finalColors');
}