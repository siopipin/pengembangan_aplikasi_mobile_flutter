import 'dart:io';

void main() {
  printUserName();
}

void printUserName() {
  stdout.write('Username: ');
  String? userName = stdin.readLineSync();
  print(userName);
}
