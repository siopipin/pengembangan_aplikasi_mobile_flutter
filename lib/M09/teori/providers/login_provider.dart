import 'package:flutter/foundation.dart';

class LoginProvider extends ChangeNotifier {
  String _name = "TI-A Sore";

  String get nameProv => _name;
  set setNama(val) {
    _name = val;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set setIsLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  gantiNama(String namaBaru) async {
    try {
      setIsLoading = true;
      await Future.delayed(Duration(seconds: 3), () {
        setNama = namaBaru;
      });
    } catch (e) {
    } finally {
      setIsLoading = false;
    }
  }
}
