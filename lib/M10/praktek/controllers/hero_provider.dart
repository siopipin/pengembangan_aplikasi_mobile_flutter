import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/praktek/models/hero_model.dart';

class HeroProvider extends ChangeNotifier {
  // ketika menggunakan consumer maka constructor ini akan otomatis dipanggil pertama sekali.
  // gunakan cara ini jika tidak ada paramater external yang dibutuhkan
  HeroProvider() {
    initialHeroList();
    _selectedHero = '';
  }

  bool _isLoadHero = false;
  bool get isLoadHero => _isLoadHero;
  set setLoadHero(bool value) {
    _isLoadHero = value;
    notifyListeners();
  }

  List<HeroModel> _hero = [];
  List<HeroModel> get heroData => _hero;
  set setHeroDataList(List<HeroModel> value) {
    _hero = value;
    notifyListeners();
  }

  String _selectedHero = '';
  String get selectedHero => _selectedHero;
  set setSelectedHero(String value) {
    _selectedHero = value;
    notifyListeners();
  }

  Future<void> initialHeroList() async {
    try {
      setLoadHero = true;
      await Future.delayed(const Duration(seconds: 3));

      List<HeroModel> heroes = [
        HeroModel(name: 'Batman', power: 'Super Intelligence', age: 35),
        HeroModel(name: 'Superman', power: 'Super Strength', age: 40),
        HeroModel(name: 'The Flash', power: 'Super Speed', age: 30),
      ];
      setHeroDataList = heroes;
    } catch (e) {
      // handle error
    } finally {
      setLoadHero = false;
    }
  }

  gantiHero(String hero) {
    setSelectedHero = hero;
  }
}
