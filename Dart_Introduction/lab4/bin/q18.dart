void main() {
List<List<int>> nestedList = [
[1, 2],
[3, 4]
// [5, 6, 7]
];
bool matchFound = false;
for (var innerList in nestedList) {
if (innerList.length == 3) {
print('Inner list with exactly 3 elements: $innerList');
matchFound = true;
break;
}
}
if (!matchFound) {
print('No match found');
}
}