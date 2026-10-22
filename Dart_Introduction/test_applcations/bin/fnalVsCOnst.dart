void main(){
  final currentTime = DateTime.now();
  // const currentTime = DateTime.now();  // Invallid
  const pi = 3.14159;


  final a = calculate(); // Valid
  // const b = calculate(); // Error

  //testing if late with const works
  // late const b = calculate();

  final testList = [1,2,3,4];
  // testList = [1,2,4]; //error obviously
  testList[1] = 14; //working, but list pointer cannot change, elements can

  // for const 
  const ls2 = [1,2,3];
  // ls2 = [1]; //error
  print(ls2.runtimeType);
  // ls2[1] = 12 ;

  final abc ;


  }


  int calculate() {
  return 10;
}

