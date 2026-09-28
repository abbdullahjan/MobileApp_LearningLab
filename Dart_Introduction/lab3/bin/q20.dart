void main(){
  var product = [
    {'name': "product1", 'price': 1000, 'quantity': 10},
    {'name': "product2", 'price': 2000, 'quantity': 30}
  ];
  product.add({'name': "product3", 'price': 3000, 'quantity': 20});

  var toFind = "product2";
  for(var i in product){
    if(i['name'] == toFind){
      print("Found $i");
    }
  }
  
  // sort
  product.sort((a,b) =>( (a["price"] as int).compareTo(b["price"] as int)));

  print("Sorted: $product");


}