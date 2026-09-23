void main(){
  List ls1 = [1,2,3,4,5,6,7];
  List ls2 = [6,7,8,9,10,11];
  List ls3 = ls1 + ls2;
  Set myls3 = ls3.toSet();
  ls3 = myls3.toList();
  print(myls3);
}