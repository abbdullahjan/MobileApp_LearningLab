void main(){
    List mylist = [10,30,20,50,60];
    print("Initial List: $mylist");
    

    mylist.sort((a,b) => (a.compareTo(b)));
    print("In ascending: $mylist");

    mylist.sort((a,b) => (b.compareTo(a)));
    print("In Descending: $mylist");
}