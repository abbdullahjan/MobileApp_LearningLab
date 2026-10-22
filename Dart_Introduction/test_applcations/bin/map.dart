void main() {
Map<dynamic, dynamic> data = {1:10, "position": "first", "marks":50};


//spread for map
Map<String, String> myObject1 = {
'name': 'Devin',
'hairColor': 'brown',
};
var myObject2 = {...myObject1, 'name':'Kamran'};
print(myObject2);
}


