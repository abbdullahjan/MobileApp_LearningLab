
void main(){
List A = ['apples', 'bananas','oranges'];
A.map((x) => "$x+concatenated".toUpperCase()).toList().forEach((x) =>  print(x));

}