void main() {
  listData();
}

void listData() {
  // Deklarasi List
  List contacts = [];
  List<int> nilai = [89, 70, 90];
  List<double> newNilai = nilai.map((item) => item / 2).toList();
  print(newNilai);

  List<String> listMahasiswa = ['Linda', 'John', 'Mary'];

  // menambah / menghapus element
  listMahasiswa.add('Budi');
  nilai.removeAt(1);

  // List fixed-length
  List contact = List.filled(2, '');

  // Iterasi melalui List:
  // Lists - In Dart List is an array
  listMahasiswa.forEach((item) {
    print('nama: $item');
  });

  // loop for in
  for (String nama in listMahasiswa) {
    print(nama);
  }

  // Akses Elemen dalam List:
  String firstStudent = listMahasiswa[0];
  String lastStudent = listMahasiswa[2];

  listMahasiswa[0] =
      'Lindayanti'; // Mengubah nilai index ke-0 menjadi 'Lindayanti'
  nilai[1] = 80; // Mengubah nilai index ke-1 menjadi 80
}
