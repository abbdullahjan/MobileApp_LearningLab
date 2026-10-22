
void main() {
  // var test = "hello";  
  // print(test);
  // // test = 10; //Error

  // Object test1 = "hello";
  // print(test1);
  // test1 = 10; 

  // String S_test = "";
  
  // print(S_test);

  // testing lazy declaration
  var result = _getResult();
  print(result);


}
String _getResult() {
// Expensive computation
return 'Computed Result';
}