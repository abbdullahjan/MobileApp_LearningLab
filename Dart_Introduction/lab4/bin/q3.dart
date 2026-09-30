void main(){
  Map<String, String> map1 = {'name': 'Alice', 'age': '25'};
  Map<String, String> map2 = {'city': 'New York', 'country': 'USA'}; 
  print(addMap(map1, map2)); 
}

Map<String, String> addMap(Map<String, String> map1, Map<String, String> map2){
  Map<String, String> newMap = {...map1, ...map2};
  return newMap;

}