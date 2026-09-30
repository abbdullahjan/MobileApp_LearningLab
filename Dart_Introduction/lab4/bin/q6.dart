// Write a Dart program that creates a list representing a shopping cart. Use the **collection
// `if`** to conditionally add an item "Coupon Discount" to the list only if a boolean variable
// `discountApplied` is `true`. The initial cart should contain `"Apples"`, `"Bananas"`, and
// `"Oranges"`. Print the final list based on whether the discount is applied or not.
// ```dart
// bool discountApplied = true; // or false
// ```

void main(){
print(checkDiscount(['Apples', 'Bananas', 'Oranges'], true));
print(checkDiscount(['Apples1', 'Bananas1', 'Oranges1'], false));
}

List checkDiscount(List ls, bool discountApplied){
  return [...ls , if(discountApplied) 'coupon Applied'];
}