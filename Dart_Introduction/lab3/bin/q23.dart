void main() {
  Map<String, int> inventory = {
    'Apples': 50,
    'Oranges': 30,
    'Bananas': 20
  };

  inventory['Oranges'] = 45;
  print(inventory);

  inventory['Mangoes'] = 60;
  print(inventory);

  inventory.remove('Bananas');
  print(inventory);
}