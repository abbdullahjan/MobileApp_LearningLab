void main() {
  Map<String, String> countries = {
    "Pakistan": "Islamabad",
    "Germany": "Berlin",
    "India": "New Delhi",
    "France": "Paris",
    "Japan": "Tokyo",
  };

  print("Capital of Germany: ${countries["Germany"]}");

  print("Does the map contain India? ${countries.containsKey("India")}");
}