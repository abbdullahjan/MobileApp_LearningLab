// void main() {
// var numList = [1, 2, 3];
// // List pattern [a, b, c] destructures the three elements from numList...
// var [a, b,c] = numList;
// // ...and assigns them to new variables.
// print(a + b );
// }



// pattern in switch
// void main() {
// int obj = 3;
// const first = 2;
// const last = 4;
// switch (obj) {
// // Matches if 1 == obj.
// case 1:
// print('one');
// // Matches if the value of obj is between the
// // constant values of 'first' and 'last'.
// case >= first && <= last:
// print('in range');
// // Matches if obj is a record with two fields,
// // then assigns the fields to 'a' and 'b'.
// case (var a, var b):
// print('a = $a, b = $b');
// default:
// }
// }





// guard statements
// when


// void main() {
// var pair=(20,10);
// switch (pair) {
// // case (int a, int b):
// // if (a > b) print('First element greater');
// // If false, prints nothing and exits the switch.
// case (int a, int b) when a > b:
// // If false, prints nothing but proceeds to next case.
// print('First element greater');
// case (int a, int b):
// print('First element not greater');
// }
// }




// loops in patterns

void main() {
Map<String, int> hist = {
'a': 23,
'b': 100,
};
for (var MapEntry(key: key, value: count) in hist.entries) {
print('$key occurred $count times');
}
}