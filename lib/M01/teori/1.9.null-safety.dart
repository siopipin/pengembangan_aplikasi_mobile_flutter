void main() {
  String? name = 'Butet';
  late int umur;
  umur = 90;

  String? nama;
  int length = nama?.length ?? 0;
  // Mengakses panjang string name, jika name null maka length = 0
  print(length);

  int lengthName = name!.length;
  // Memberitahu Dart bahwa name pasti tidak null saat mengakses panjangnya
}
