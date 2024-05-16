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
}
