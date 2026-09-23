void main(){
  List original = [1,2,3,4,5,6,7,8,9];
  var iteratableEven = original.where((x) => (x%2 == 0));
  var iteratableOdd = original.where((x) => (x%2 == 1));
  List even = [];
  List odd = [];

  for(var i in iteratableEven){
    even.add(i);
  }
  for(var i in iteratableOdd){
    odd.add(i);
  }

  print("EvenList: $even");
  print("OddList: $odd");
}