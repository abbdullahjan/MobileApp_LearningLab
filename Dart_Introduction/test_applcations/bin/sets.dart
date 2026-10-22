// void main() {
// var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens.iterator);
// print(halogens.elementAt(1));
// for (var element in halogens)
// {
// print(element);
// }
// }


void main() {
// var testSet = <String>{}; //works
// var testSet1 = Set<String>{}; //doesnt
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
print(halogens);
}

