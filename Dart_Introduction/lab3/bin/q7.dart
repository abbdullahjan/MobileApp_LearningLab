void main(){
    List mylist = [
      "string1",
      "string2",
      "string3",
      "string4",
      "string5"];
      String toSearch = "string4";
    if(mylist.contains(toSearch)){
      print("Located at index ${mylist.indexOf(toSearch)}");
    }else{
    print("String {$toSearch} not found ");

    }

}