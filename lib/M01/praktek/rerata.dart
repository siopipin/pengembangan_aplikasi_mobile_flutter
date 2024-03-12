import 'dart:io';

void main() {
  List<int> daftarAngka = [];

  stdout.write('Masukkan bilangan (tekan Enter untuk selesai): ');
  String? input = stdin.readLineSync();

  while (input!.isNotEmpty) {
    int angka = int.parse(input);
    daftarAngka.add(angka);

    stdout.write('Masukkan bilangan (tekan Enter untuk selesai): ');
    input = stdin.readLineSync();
  }

  double rataRata = hitungRataRata(daftarAngka);
  print('Rata-rata dari bilangan yang dimasukkan adalah: $rataRata');
}

double hitungRataRata(List<int> daftarAngka) {
  if (daftarAngka.isEmpty) {
    return 0.0;
  }

  int total = 0;
  for (int angka in daftarAngka) {
    total += angka;
  }

  return total / daftarAngka.length;
}
