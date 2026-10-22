// List of Records:
// void main() {
// var list = [(id: 1, name:'Ali'), (id: 2, name:'javed')];
// for( var item in list) {
// print(item.name);
// }
// }

// spread
// void main() {
// var list = [1, 2, 3];
// var list2 = [0, ...list];
// assert(list2.length == 4);
// }



//null aware spread opeartor
// void main() {
//   var list ;
// var list2 = [0, ...?list];
// assert(list2.length == 1);
// print(list2);
// }




// condition if
// void main() {
// var login = "Manager";
// var nav = ['Home', 'Furniture', 'Plants', if (login case 'Manager')
// 'Inventory'];
// print(nav);
// }



// collection for 
void main() {
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
// listOfStrings.add("1");
//assert(listOfStrings[1] == '#1');
print(listOfStrings);
}