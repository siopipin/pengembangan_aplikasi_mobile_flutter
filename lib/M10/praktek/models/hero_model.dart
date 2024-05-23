// model hero
class HeroModel {
  String? name;
  String? power;
  int? age;

  HeroModel({this.name, this.power, this.age});

  void showPower() {
    if (power == 'Super Strength') {
      print('Hero ini memiliki kekuatan super strength');
    } else if (power == 'Super Speed') {
      print('Hero ini memiliki kekuatan super speed');
    } else {
      print('Hero ini memiliki kekuatan super intelligence');
    }
  }

  void showAge() {
    if (age! > 30) {
      print('Hero ini sudah tua');
    } else {
      print('Hero ini masih muda');
    }
  }
}
