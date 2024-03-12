class Buku {
  // atribut / properti / variabel
  String? judul;
  String? pengarang;
  int? tahunTerbit;
  int? jumlahHalaman;

  // constructor dengan nilai default
  Buku({this.judul, this.pengarang, this.tahunTerbit, this.jumlahHalaman}) {
    judul = "Pemrograman Komputer";
    pengarang = "Sio & Ricky";
    tahunTerbit = 2024;
    jumlahHalaman = 100;
  }

  // construct direct
  // Buku({this.judul, this.pengarang, this.tahunTerbit, this.jumlahHalaman});

  // construct dengan custom parameter (named)
  Buku.newConstructor(
      {required String judulBuku,
      required String pengarangBuku,
      required int tahunTerbit,
      required int jumlahHalaman}) {
    judul = judulBuku;
    pengarang = pengarangBuku;
    tahunTerbit = tahunTerbit;
    jumlahHalaman = jumlahHalaman;
  }

  // metode
  void tampilkanBuku() {
    print('Buku yang pilih berjudul $judul');
  }
}

void main() {
  Buku buku = Buku();
  Buku buku2 = Buku.newConstructor(
      judulBuku: "Pemrograman Dart",
      pengarangBuku: "Sio",
      jumlahHalaman: 100,
      tahunTerbit: 2024);
  Buku buku3 = Buku(
      judul: "Flutter Mobile",
      jumlahHalaman: 200,
      pengarang: "SJ Pipin",
      tahunTerbit: 2025);
  buku.tampilkanBuku();
  buku2.tampilkanBuku();
  buku3.tampilkanBuku();
}
