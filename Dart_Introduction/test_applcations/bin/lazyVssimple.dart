// Without late
// String result = _getResult();

// String _getResult() {
//   print('Computing...');
//   return 'Computed Result';
// }

// void main() {
//   print('Main started');
//   print(result);
// }
// with late 
late String result = _getResult();

String _getResult() {
  print('Computing...');
  return 'Computed Result';
}

void main() {
  print('Main started');
  print(result);
}