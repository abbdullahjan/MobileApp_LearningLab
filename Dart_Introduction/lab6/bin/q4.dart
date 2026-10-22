void main() {
  var mylist = [
    {"name": "Ali", "age": 45, "marks": 32},
    {"name": "Noman", "age": 32, "marks": 23},
    {"name": "Faisal", "age": 41, "marks": 43},
    {"name": "Noman", "age": 11, "marks": 43},
    {"name": "Faisal", "age": 8, "marks": 43},
  ];

  var result = mylist.where((x) => x["age"] as int > 30).where((x) => x["name"] == "Noman" || x["name"] == "Faisal");

  print(result);
}