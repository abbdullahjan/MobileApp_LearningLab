void main() {
  var mylist = [
    {"position": 10, "name": "Jawad"},
    {"position": 33, "name": "Faisal"},
    {"position": 4, "name": "Zahid"},
    {"position": 6, "name": "Ali"},
    {"position": 9, "name": "Noman"},
    {"position": 4, "name": "Ben"}
  ];

 mylist.sort((a, b) {
    var result =
        (a["position"] as int).compareTo(b["position"] as int);

    if (result == 0) {
      result =
          (a["name"] as String).compareTo(b["name"] as String);
    }

    return result;
  });

  print(mylist);
}