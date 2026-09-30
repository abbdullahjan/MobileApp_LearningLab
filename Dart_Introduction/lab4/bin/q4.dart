

void main() {
List<int> evens = [2, 4, 6];
List<int> odds = [1, 3, 5];
List<int> combinedList = [0, ...evens, ...odds, 7];
print('Combined list: $combinedList');
}