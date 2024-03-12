import 'dart:io';

void main() {
  double angka1 = getInput('Masukkan angka pertama: ');
  double angka2 = getInput('Masukkan angka kedua: ');
  String operasi = getOperation();

  double hasil = calculate(angka1, angka2, operasi);

  print('Hasil: $hasil');
}

double getInput(String message) {
  stdout.write(
      message); // Menampilkan pesan untuk meminta input angka dari pengguna
  return double.parse(stdin
      .readLineSync()!); // Mengembalikan nilai double dari input pengguna setelah di-parse
}

String getOperation() {
  stdout.write('Pilih operasi (+, -, *, /): ');
  return stdin.readLineSync()!;
}

double calculate(double angka1, double angka2, String operasi) {
  switch (operasi) {
    case '+':
      return angka1 + angka2;
    case '-':
      return angka1 - angka2;
    case '*':
      return angka1 * angka2;
    case '/':
      return angka1 / angka2;
    default:
      print('Operasi tidak valid');
      return 0.0;
  }
}
