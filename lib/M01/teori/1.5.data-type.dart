void main() {
  printNumbers();
  printString();
  printBooleans();
  printDynamic();
  printNull();
}

void printNumbers() {
  // Integer
  int counter = 0;
  double price = 0.0;
  price = 125.00;
  print(counter + price);
}

void printString() {
  // Strings
  String defaultMenu = 'main';

  // String concatenation
  String combinedName = 'main' + ' ' + 'function';
  String combinedNameNoPlusSign = 'main' ' ' 'function'; //opsi lain

  print(combinedName);
  print(combinedNameNoPlusSign);
}

void printBooleans() {
  // Booleans
  bool isDone = false;
  isDone = true;
  print(isDone);
}

void printDynamic() {
  dynamic value = 10;
  print(value);
}

void printNull() {
  Null data;
  int? dataNull;
  print(data);
  print(dataNull);
}
