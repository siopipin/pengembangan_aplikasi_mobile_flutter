import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/models/produk_model.dart';

class MyListProvider extends ChangeNotifier {
  final namaBarangController = TextEditingController();
  final qtyBarangController = TextEditingController();

  bool _isLoading = false;

  bool get isLoading => _isLoading;
  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  List<Produk> listBarang = [];
  List<Produk> getListBarang() => listBarang;

  void setBarangBaru(Produk barang) {
    listBarang.add(barang);
    notifyListeners();
  }

  void removeProdukById(String nama) {
    listBarang.removeWhere((produk) => produk.nama == nama);
    notifyListeners();
  }

  void clearListBarang() {
    listBarang.clear();
    notifyListeners();
  }

  addProduk(Produk produk) async {
    try {
      setLoading(true);
      await Future.delayed(const Duration(seconds: 2));
      setBarangBaru(produk);
    } catch (e) {
      // handle error
    } finally {
      setLoading(false);
    }
  }
}
