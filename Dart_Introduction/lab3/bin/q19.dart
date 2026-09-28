void main(){
  var cityInfo = Map<String, int>();
  cityInfo["a"] = 1000;
  cityInfo["x"] = 2000;
  cityInfo["c"] = 3000;
  cityInfo["d"] = 4000;
  cityInfo["e"] = 5000;
  cityInfo["f"] = 6000;
  
  var listOfmap = [];
  for(var i in cityInfo.keys){
    listOfmap.add((i, cityInfo[i]));
  }

  listOfmap.sort((x,y) => (x.$2.compareTo(y.$2)));

  cityInfo = Map<String, int>();
  for(var i in listOfmap){
    cityInfo[i.$1] = i.$2;
  }

  print(cityInfo);
}