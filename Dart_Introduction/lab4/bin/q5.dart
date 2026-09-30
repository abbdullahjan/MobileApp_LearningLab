// Write a Dart function that takes a list of lists (nested lists) and flattens it into a single list using
// the spread operator. For example, given:

void main(){
  List list = [[1,2,3],[4,5,6],[7,8,9]];
  print(flatten(list));
}

List flatten(List ls){
 List newLs = [];
 for(var i in ls){
  newLs = [...newLs, ...i];
 }
 return newLs;
}