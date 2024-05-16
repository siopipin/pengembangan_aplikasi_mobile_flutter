import 'package:flutter/material.dart';

class BookProvider extends ChangeNotifier {
  String titleScreen = "Gallery Screen";
  TextEditingController controller = TextEditingController();

  String _bookName = "Maulana Abdullah";
  String get bookName => _bookName;
  set changeKasir(String newBookName) {
    _bookName = newBookName;
    notifyListeners();
  }

  String _penerbit = "-";
  String get penerbit => _penerbit;
  set gantiPenerbit(String x) {
    _penerbit = x;
    notifyListeners();
  }

  bool _memutar = false;
  bool get memutar => _memutar;
  set gantimemutar(val) {
    _memutar = val;
    notifyListeners();
  }

  ubahIdentitasBuku(String namaBuku, String penerbit) async {
    try {
      gantimemutar = true;
      await Future.delayed(Duration(seconds: 3), () {
        gantiPenerbit = penerbit;
        changeKasir = namaBuku;
      });
    } catch (e) {
      // handle error
    } finally {
      gantimemutar = false;
    }
  }
}
