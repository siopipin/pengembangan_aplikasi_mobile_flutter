import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/models/produk_model.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/providers/mylist_provider.dart';
import 'package:provider/provider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final myListProvider = context.watch<MyListProvider>();
    final myListReadProvider = context.watch<MyListProvider>();

    initState() {
      super.initState();

      // task: saat pertama sekali aplikasi dijalankan, kita perlu panggil fungsi fetchData untuk mengambil data dari server (simulasi dengan Future.delayed). Tambahkan fungsi fetchData ini pada provider. (lihat pada file mylist_provider.dart)
    }

    return Scaffold(
      appBar: AppBar(title: const Text("My List")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            if (myListProvider.listBarang.isEmpty)
              const Center(child: Text("Belum ada barang masuk"))
            else if (myListProvider.isLoading)
              const Center(child: CircularProgressIndicator())
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: myListProvider.listBarang.length,
                itemBuilder: (context, index) {
                  final barang = myListProvider.listBarang[index];

                  return ListTile(
                    title: Text(barang.nama),
                    subtitle: Text("Qty: ${barang.stok}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // task: pada provider kita perlu simulasikan proses removeProduk ini butuh waktu, maka kita gunakan Future.delayed dengan durasi 2 detik.
                        myListProvider.removeProdukById(barang.nama);
                      },
                    ),
                  );
                },
              ),
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: myListProvider.namaBarangController,
                          decoration: const InputDecoration(
                            labelText: 'Nama Barang',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),

                      // task: tambahkan disini 1 textfield untuk harga barang.

                      Expanded(
                          child: TextField(
                        controller: myListProvider.qtyBarangController,
                        decoration: const InputDecoration(
                          labelText: 'qty',
                        ),
                      ))
                    ],
                  ),
                ),
                IconButton(
                  onPressed: myListProvider.isLoading
                      ? null
                      : () async {
                          await myListReadProvider.addProduk(
                            Produk(
                              nama: myListProvider.namaBarangController.text,
                              // task: tambahkan harga disini. (maka perlu menambahkan harga di model produk_model.dart)
                              stok: int.parse(
                                  myListProvider.qtyBarangController.text),
                            ),
                          );

                          // bersihkan textfield
                          myListReadProvider.namaBarangController.clear();
                          myListReadProvider.qtyBarangController.clear();
                        },
                  icon: myListProvider.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : const Icon(Icons.add_box_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
