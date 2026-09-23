void main(){
    List mylist = [10,20,30,40];
    print("Initial List: $mylist");
    mylist.add(50);
    mylist.remove(20);
    if(mylist.contains(30)){
      print("Present in list");
    }


    print("Final List: $mylist");
}