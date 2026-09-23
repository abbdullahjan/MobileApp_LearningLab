void main(){
    Set mySet = {10,20,30,40};
    print("Initial Set: $mySet");
    mySet.add(50);
        print("After adding 50: $mySet");

    mySet.remove(20);
        print("After removing 30: $mySet");
    if(mySet.contains(30)){
      print("Present in Set");
    }


    print("Final Set: $mySet");
}