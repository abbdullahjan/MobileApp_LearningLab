// Write a Dart program that generates a list of numbers from 1 to 10 using the **collection
// `for`**. Then, use the **collection `if`** to include only even numbers in the final list. Print the
// list of even numbers.

void main(){
  List ls = [for(int i = 0 ; i < 10 ; i++) if(i%2==0) i];  
  print(ls);
}

