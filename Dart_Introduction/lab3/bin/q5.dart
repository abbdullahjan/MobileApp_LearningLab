void main(){
List<(String name, double price)> Product = [
  ("Product1", 20000),
  ("Product2", 19000),
  ("Product3", 18000),
  ("Product4", 21000),
  ("Product5", 16000),
];

  print("Before Updation");
for(var i in Product){
    print("Name: ${i.$1}, Price: ${i.$2}");
  }

for(int i = 0 ; i<Product.length ; i++){
  Product[i] = (Product[i].$1, Product[i].$2 + Product[i].$2*0.1); 
}
  print("After Updation");
for(var i in Product){
    print("Name: ${i.$1}, Price: ${i.$2}");
  }
}