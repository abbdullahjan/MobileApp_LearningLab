void main(){
    List mylist = [10,20,30,40,50];
    print("Initial List: $mylist");
    mylist.add(60);
    mylist.remove(20);
    mylist[mylist.indexOf(30)] = 35;

    print("Final List: $mylist");
}