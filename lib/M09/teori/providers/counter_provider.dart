import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  //initialisasi
  String _kasir = "-";
  bool _isLoading = false;
  bool _isError = false;

  bool get isLoading => _isLoading;
  set setLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  bool get isError => _isError;
  set setError(val) {
    _isError = val;
    notifyListeners();
  }

  String get kasir => _kasir;
  set setKasir(val) {
    _kasir = val;
    notifyListeners();
  }

  getData(String namaKasir) async {
    try {
      setLoading = true;
      await Future.delayed(const Duration(seconds: 3), () {
        setKasir = namaKasir;
        if (kasir != "budiono") {
          throw 'something was wrong';
        }
      });
    } catch (e) {
      setError = true;
    } finally {
      setLoading = false;
    }
  }
}
