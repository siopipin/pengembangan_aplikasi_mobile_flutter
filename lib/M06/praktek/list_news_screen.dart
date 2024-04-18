import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/praktek/news_detail_screen.dart';

class ListNewsScreen extends StatelessWidget {
  const ListNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Terbaru'),
      ),
      body: ListView(
        children: [
          // TASK: 1 container besar berisi judul berita dengan headline besar, warna container ungu dengan text warna putih.

          ListTile(
            leading: Image.network(
              'https://picsum.photos/100',
              width: 100,
              fit: BoxFit.cover,
            ),
            title: const Text('Judul Berita 1'),
            subtitle: const Text('Deskripsi singkat berita 1'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailNewsScreen(id: 1)),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
          // TASK: Cari tahu apakah ada widget untuk membuat garis horizontal yang dapat diguanakan untuk memisahkan antar setiap list berita.

          ListTile(
            leading: Image.network(
              'https://picsum.photos/200',
              width: 100,
              fit: BoxFit.cover,
            ),
            title: const Text('Judul Berita 2'),
            subtitle: const Text('Deskripsi singkat berita 2'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailNewsScreen(id: 2)),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),

          //TASK: Tambahkan ListTile lainnya untuk berita selanjutnya
        ],
      ),
    );
  }
}
