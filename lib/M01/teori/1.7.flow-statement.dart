void main() {
  ifStatement();
  switchCaseStatement();
  forLoop();
  doWhiledo();
  int hasilPenjumlahan = returnStatement(3, 2);
  print(hasilPenjumlahan);
}

void ifStatement() {
  int x = 10;
  if (x > 5) {
    print('x lebih besar dari 5');
  } else {
    print('x tidak lebih besar dari 5');
  }
}

void switchCaseStatement() {
  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('Hari Senin');
      break;
    default:
      print('Hari lainnya');
  }
}

void forLoop() {
  for (var i = 0; i < 2; i++) {
    print(i);
  }
}

void doWhiledo() {
  int i = 0;
  while (i < 2) {
    print('while: $i');
    i++;
  }

  int j = 0;
  do {
    print('do while: $j');
    j++;
  } while (j < 2);
}

returnStatement(a, b) {
  return a + b; // Mengembalikan hasil penjumlahan a dan b
}
