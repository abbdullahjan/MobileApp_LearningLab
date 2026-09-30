void main(){
  List<int>? list1 = [1, 2, 3];
List<int>? list2 = [4, 5, 6];
List<int>? list3 = null;
List<int>? list4 = [7, 8, 9];
// Combining different combinations of lists
print('Combining list1 and list2: ${addList(list1, list2)}');
print('Combining list1 and list3: ${addList(list1, list3)}');
print('Combining list3 and list4: ${addList(list3, list4)}');
print('Combining list3 and list3: ${addList(list3, list3)}');
print('Combining list2 and list4: ${addList(list2, list4)}');
}

List<int>? addList(List<int>? ls1, List<int>? ls2){
  List<int>? nullable = [...?ls1, ...?ls2];
  return nullable;
}