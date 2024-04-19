import 'package:flutter/material.dart';

class DetailNewsScreen extends StatelessWidget {
  final int id;
  DetailNewsScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              // TASK: Tambahkan judul berita dengan font besar, kemudian dibawahnya tampil text tanggal publishing berita dan nama penulis.

              // TASK: Kemudian, tambahkan gambar berita dengan lebarnya mengambil lebar layar HP

              // Ketik isi berita sesuai dengan ID.
              if (id == 1)
                Column(children: [Text('Halaman Detail Berita Pertama')])
              else
                Column(children: [Text('Halaman Detail Berita Kedua')]),

              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Kembali"))
            ],
          )),
    );
  }
}
