
// Create a Dart program that uses a **map literal** to store product names as keys and their
// prices as values. Use the **collection `if`** to include an entry `"Discount"` only if a boolean
// `applyDiscount` is `true`. If the discount is applied, the value should be a 10% deduction of
// the total price. Otherwise, no discount should appear in the map
void main(){
  Map<String, double> ls = {
'Laptop': 1000.0,
'Smartphone': 800.0,
'Tablet': 500.0
};
bool applyDiscount = true; 
print(discount(ls, applyDiscount));
}

Map discount(Map<String, double> ls, bool applyDiscount){

  double sum = 0;
  for(var i in ls.entries){
    sum += i.value;
  }
  Map<String, double> finalPrices = {
...ls,
if (applyDiscount) 'Discount': sum * 0.10
};
return finalPrices;
  // Map<String, double> newLs = {if(applyDiscount) for(var i in ls.entries) i.key : i.value - i.value * 0.10};

}