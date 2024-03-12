import 'dart:io';
import 'dart:math';

void main() {
  double angka1 = getInput(
      message: 'Masukkan angka pertama (default: 0):', defaultValue: 0.0);
  double angka2 = getInput(
      message: 'Masukkan angka kedua (default: 0):', defaultValue: 0.0);
  int operasi = getOperation();

  double hasil;

  if (operasi == 1) {
    hasil = add(angka1, angka2);
  } else if (operasi == 2) {
    hasil = subtract(angka1, angka2);
  } else if (operasi == 3) {
    hasil = multiply(angka1, angka2);
  } else if (operasi == 4) {
    hasil = divide(angka1, angka2);
  } else if (operasi == 5) {
    hasil = modulus(angka1, angka2);
  } else if (operasi == 6) {
    hasil = power(angka1, angka2);
  } else if (operasi == 7) {
    hasil = squareRoot(angka1);
  } else {
    print('Operasi tidak valid!');
    return;
  }

  print('Hasil: $hasil');
}

double getInput({required String message, required double defaultValue}) {
  stdout.write(message);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    return defaultValue;
  }
  return double.parse(input);
}

int getOperation() {
  stdout.write(
      'Pilih operasi:\n1. Penjumlahan\n2. Pengurangan\n3. Perkalian\n4. Pembagian\n5. Modulus\n6. Pangkat\n7. Akar\n');
  return int.parse(stdin.readLineSync()!);
}

double add(double angka1, double angka2) {
  return angka1 + angka2;
}

double subtract(double angka1, double angka2) {
  return angka1 - angka2;
}

double multiply(double angka1, double angka2) {
  return angka1 * angka2;
}

double divide(double angka1, double angka2) {
  if (angka2 == 0) {
    print('Tidak dapat membagi dengan angka nol');
    return 0.0;
  }
  return angka1 / angka2;
}

double modulus(double angka1, double angka2) {
  return angka1 % angka2;
}

double power(double angka, double pangkat) {
  double hasil = 1;
  for (int i = 0; i < pangkat; i++) {
    hasil *= angka;
  }
  if (pangkat < 0) {
    return 1 / hasil;
  }
  return hasil;
}

double squareRoot(double angka) {
  return sqrt(angka);
}
