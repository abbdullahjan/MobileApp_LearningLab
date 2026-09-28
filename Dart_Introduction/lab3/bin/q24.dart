void main(){
  List list = ['apple','banana','apple','orange','banana','apple'];
  print(returnMap(list));
}

Map<String, int> returnMap(List mylist){
  var myMap = Map<String,int>();
  for(var i in mylist){
    if(myMap.containsKey(i)){continue;}
    myMap[i] = countvalues(mylist, i);
  }
  return myMap;
}

int countvalues(List list, String value){
  int count = 0 ;
  for(var i in list){
    if(i == value){
      count++;
    }
  }
  return count;
}